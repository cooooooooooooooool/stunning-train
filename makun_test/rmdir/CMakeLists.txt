project(rmdir_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)
message(..)
add_executable(rmdir_tests rmdir_tests.cpp)
target_link_libraries(rmdir_tests gmock gtest glog pthread)
