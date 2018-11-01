project(os_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)

add_executable(os_tests os_tests.cpp)
target_link_libraries(os_tests boost gmock gtest glog pthread)
