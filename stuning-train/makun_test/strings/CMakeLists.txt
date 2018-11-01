project(strings_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)
message(..)
add_executable(strings_tests strings_tests.cpp)
target_link_libraries(strings_tests gmock gtest glog pthread)
