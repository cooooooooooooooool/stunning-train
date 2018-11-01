project(ip_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)
message(..)
add_executable(ip_tests ip_tests.cpp)
target_link_libraries(ip_tests gmock gtest glog pthread)
