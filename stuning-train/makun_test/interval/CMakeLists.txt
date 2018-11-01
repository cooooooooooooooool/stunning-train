project(interval_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)
message(..)
add_executable(interval_tests interval_tests.cpp)
target_link_libraries(interval_tests gmock gtest glog pthread)
