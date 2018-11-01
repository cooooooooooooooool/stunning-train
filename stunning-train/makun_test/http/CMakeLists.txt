project(http_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)

add_executable(http_tests http_tests.cpp)
target_link_libraries(http_tests process gmock gtest glog pthread)
