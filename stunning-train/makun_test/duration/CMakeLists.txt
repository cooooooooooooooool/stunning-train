project(duration_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)
message(..)
add_executable(duration_tests duration_tests.cpp)
target_link_libraries(duration_tests gmock gtest glog pthread)
