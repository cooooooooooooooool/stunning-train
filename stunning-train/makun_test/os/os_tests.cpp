//
// Created by marcie on 18-10-26.
//

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License

#include <stdint.h>

#if !defined(__linux__) && !defined(__WINDOWS__)
#include <sys/time.h> // For gettimeofday.
#endif
#ifdef __FreeBSD__
#include <sys/sysctl.h>
#include <sys/types.h>
#endif

#include <cstdlib> // For rand.
#include <list>
#include <map>
#include <set>
#include <sstream>
#include <string>
#include <vector>

#include <gmock/gmock.h>

#include <gtest/gtest.h>

#include <stout/duration.hpp>
#include <stout/foreach.hpp>
#include <stout/fs.hpp>
#include <stout/gtest.hpp>
#include <stout/hashset.hpp>
#include <stout/numify.hpp>
#include <stout/os.hpp>
#include <stout/os/environment.hpp>
#include <stout/os/int_fd.hpp>
#include <stout/os/kill.hpp>
#include <stout/os/killtree.hpp>
#include <stout/os/write.hpp>
#include <stout/stopwatch.hpp>
#include <stout/strings.hpp>
#include <stout/try.hpp>
#include <stout/uuid.hpp>

#if defined(__APPLE__) || defined(__FreeBSD__)
#include <stout/os/sysctl.hpp>
#endif

#include <stout/tests/utils.hpp>

#ifndef __WINDOWS__
using os::Exec;
#endif // __WINDOWS__
using os::Fork;
using os::Process;
using os::ProcessTree;

using std::list;
using std::set;
using std::string;
using std::vector;


class OsTest : public TemporaryDirectoryTest {};




TEST_F(OsTest, TrivialEnvironment)
{
//     NOTE: Regression test that ensures Windows can get and set an environment
//     variable. This is easy to break: Windows maintains two non-compatible ways
//     to get and set environment variables: the CRT way (using `environ`,
//     `setenv`, and `getenv`), and the Win32 way (using `GetEnvironmentStrings`,
//     `SetEnvironmentVariable`, and `GetEnvironmentVariable`). This test makes
//     sure that we consistently back the Stout environment variable APIs with
//     with one or the other; a mix won't work.
    const string key = "test_key1";
    const string value = "value";
    os::setenv(key, value);

    hashmap<string, string> environment = os::environment();
    ASSERT_TRUE(environment.count(key) != 0);
    ASSERT_EQ(value, environment[key]);

    // NOTE: Regression test that ensures we can set an environment variable to
    // be an empty string. On Windows, this is only possible with the Win32 APIs:
    // the CRT `environ` macro will simply delete the variable if it is passed an
    // empty string as a value.
    os::setenv(key, "", true);

    environment = os::environment();
    ASSERT_TRUE(environment.count(key) != 0);
    ASSERT_EQ("", environment[key]);
}


TEST_F(OsTest, Argv)
{
    vector<string> args = {"arg0", "arg1", "arg2"};

    os::raw::Argv _argv(args);
    char** argv = _argv;
    for (size_t i = 0; i < args.size(); i++) {
        EXPECT_EQ(args[i], argv[i]);
    }
}


TEST_F(OsTest, System)
{
    EXPECT_EQ(0, os::system("exit 0"));
    EXPECT_EQ(0, os::system(SLEEP_COMMAND(0)));
    EXPECT_NE(0, os::system("exit 1"));
    EXPECT_NE(0, os::system("invalid.command"));

    // Note that ::system returns 0 for the following two cases as well.
    EXPECT_EQ(0, os::system(""));
    EXPECT_EQ(0, os::system(" "));
}


// NOTE: Disabled because `os::cloexec` is not implemented on Windows.
TEST_F_TEMP_DISABLED_ON_WINDOWS(OsTest, Cloexec)
{
    Try<int_fd> fd = os::open(
            "cloexec",
            O_CREAT | O_WRONLY | O_APPEND | O_CLOEXEC,
            S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);

    ASSERT_SOME(fd);
    EXPECT_SOME_TRUE(os::isCloexec(fd.get()));

    ASSERT_SOME(os::unsetCloexec(fd.get()));
    EXPECT_SOME_FALSE(os::isCloexec(fd.get()));

    close(fd.get());

    fd = os::open(
            "non-cloexec",
            O_CREAT | O_WRONLY | O_APPEND,
            S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);

    ASSERT_SOME(fd);
    EXPECT_SOME_FALSE(os::isCloexec(fd.get()));

    ASSERT_SOME(os::cloexec(fd.get()));
    EXPECT_SOME_TRUE(os::isCloexec(fd.get()));

    close(fd.get());
}



// TODO(hausdorff): Fix this issue and enable the test on Windows. It fails
// because `os::size` is not following symlinks correctly on Windows. See
// MESOS-5939.
// Tests whether a file's size is reported by os::stat::size as expected.
// Tests all four combinations of following a link or not and of a file
// or a link as argument. Also tests that an error is returned for a
// non-existing file.
TEST_F_TEMP_DISABLED_ON_WINDOWS(OsTest, SYMLINK_Size)
{
    const string file = path::join(os::getcwd(), UUID::random().toString());

    const Bytes size = 1053;

    ASSERT_SOME(os::write(file, string(size.bytes(), 'X')));

    // The reported file size should be the same whether following links
    // or not, given that the input parameter is not a link.
    EXPECT_SOME_EQ(size, os::stat::size(file, os::stat::FOLLOW_SYMLINK));
    EXPECT_SOME_EQ(size, os::stat::size(file, os::stat::DO_NOT_FOLLOW_SYMLINK));

    EXPECT_ERROR(os::stat::size("aFileThatDoesNotExist"));

    const string link = path::join(os::getcwd(), UUID::random().toString());

    ASSERT_SOME(fs::symlink(file, link));

    // Following links we expect the file's size, not the link's.
    EXPECT_SOME_EQ(size, os::stat::size(link, os::stat::FOLLOW_SYMLINK));

    // Not following links, we expect the string length of the linked path.
    EXPECT_SOME_EQ(Bytes(file.size()),
                   os::stat::size(link, os::stat::DO_NOT_FOLLOW_SYMLINK));
}


TEST_F(OsTest, BootId)
{
    Try<string> bootId = os::bootId();
    ASSERT_SOME(bootId);
    EXPECT_NE("", bootId.get());

#ifdef __linux__
    Try<string> read = os::read("/proc/sys/kernel/random/boot_id");
    ASSERT_SOME(read);
    EXPECT_EQ(bootId.get(), strings::trim(read.get()));
}


// TODO(hausdorff): Enable test on Windows after we fix. The test hangs. See
// MESOS-3441.
TEST_F_TEMP_DISABLED_ON_WINDOWS(OsTest, Sleep)
{
    Duration duration = Milliseconds(10);
    Stopwatch stopwatch;
    stopwatch.start();
    ASSERT_SOME(os::sleep(duration));
    ASSERT_LE(duration, stopwatch.elapsed());

    ASSERT_ERROR(os::sleep(Milliseconds(-10)));
}




TEST_F(OsTest, TrivialUser)
{
    const Result<string> user1 = os::user();
    ASSERT_SOME(user1);
    ASSERT_NE("", user1.get());


}


// TODO(hausdorff): Look into enabling this on Windows. Right now,
// `LD_LIBRARY_PATH` doesn't exist on Windows, so `setPaths` doesn't work. See
// MESOS-5940.
// Test setting/resetting/appending to LD_LIBRARY_PATH environment
// variable (DYLD_LIBRARY_PATH on OS X).
TEST_F_TEMP_DISABLED_ON_WINDOWS(OsTest, Libraries)
{
    const string path1 = "/tmp/path1";
    const string path2 = "/tmp/path1";
    string ldLibraryPath;
    const string originalLibraryPath = os::libraries::paths();

    // Test setPaths.
    os::libraries::setPaths(path1);
    EXPECT_EQ(os::libraries::paths(), path1);

    // Test appendPaths.
    // 1. With empty LD_LIBRARY_PATH.
    // 1a. Set LD_LIBRARY_PATH to an empty string.
    os::libraries::setPaths("");
    ldLibraryPath = os::libraries::paths();
    EXPECT_EQ(ldLibraryPath, "");

    // 1b. Now test appendPaths.
    os::libraries::appendPaths(path1);
    EXPECT_EQ(os::libraries::paths(), path1);

    // 2. With non-empty LD_LIBRARY_PATH.
    // 2a. Set LD_LIBRARY_PATH to some non-empty value.
    os::libraries::setPaths(path2);
    ldLibraryPath = os::libraries::paths();
    EXPECT_EQ(ldLibraryPath, path2);

    // 2b. Now test appendPaths.
    os::libraries::appendPaths(path1);
    EXPECT_EQ(os::libraries::paths(), path2 + ":" + path1);

    // Reset LD_LIBRARY_PATH.
    os::libraries::setPaths(originalLibraryPath);
    EXPECT_EQ(os::libraries::paths(), originalLibraryPath);
}


// TODO(hausdorff): Port this test to Windows; these shell commands as they
// exist now don't make much sense to the Windows cmd prompt. See MESOS-3441.
TEST_F_TEMP_DISABLED_ON_WINDOWS(OsTest, Shell)
{
    Try<string> result = os::shell("echo %s", "hello world");
    EXPECT_SOME_EQ("hello world\n", result);

    result = os::shell("foobar");
    EXPECT_ERROR(result);

    // The `|| true`` necessary so that os::shell() sees a success
    // exit code and returns stdout (which we have piped stderr to).
    result = os::shell("LC_ALL=C ls /tmp/foobar889076 2>&1 || true");
    ASSERT_SOME(result);
    EXPECT_TRUE(strings::contains(result.get(), "No such file or directory"));

    // Testing a more ambitious command that mutates the filesystem.
    const string path = "/tmp/os_tests.txt";
    result = os::shell("touch %s", path.c_str());
    EXPECT_SOME_EQ("", result);
    EXPECT_TRUE(os::exists(path));

    // Let's clean up, and ensure this worked too.
    result = os::shell("rm %s", path.c_str());
    EXPECT_SOME_EQ("", result);
    EXPECT_FALSE(os::exists("/tmp/os_tests.txt"));
}



// TODO(hausdorff): Look into enabling this test on Windows. Currently it is
// not possible to create a symlink on Windows unless the target exists. See
// MESOS-5881.
TEST_F_TEMP_DISABLED_ON_WINDOWS(OsTest, SYMLINK_Realpath)
{
    // Create a file.
    const Try<string> _testFile = os::mktemp();
    ASSERT_SOME(_testFile);
    ASSERT_SOME(os::touch(_testFile.get()));
    const string& testFile = _testFile.get();

    // Create a symlink pointing to a file.
    const string testLink = UUID::random().toString();
    ASSERT_SOME(fs::symlink(testFile, testLink));

    // Validate the symlink.
    const Try<ino_t> fileInode = os::stat::inode(testFile);
    ASSERT_SOME(fileInode);
    const Try<ino_t> linkInode = os::stat::inode(testLink);
    ASSERT_SOME(linkInode);
    ASSERT_EQ(fileInode.get(), linkInode.get());

    // Verify that the symlink resolves correctly.
    Result<string> resolved = os::realpath(testLink);
    ASSERT_SOME(resolved);
    EXPECT_TRUE(strings::contains(resolved.get(), testFile));

    // Verify that the file itself resolves correctly.
    resolved = os::realpath(testFile);
    ASSERT_SOME(resolved);
    EXPECT_TRUE(strings::contains(resolved.get(), testFile));

    // Remove the file and the symlink.
    os::rm(testFile);
    os::rm(testLink);
}



int main(int argc, char** argv) {
    // Initialize Google Mock/Test.
    testing::InitGoogleMock(&argc, argv);

    return RUN_ALL_TESTS();
}