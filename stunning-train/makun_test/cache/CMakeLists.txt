project(cache_tests)

set(CMAKE_CXX_STANDARD 11)

include_directories(SYSTEM ..)
message(..)
add_executable(cache_tests cache_tests.cpp ../duration/duration_tests.cpp ../interval/interval_tests.cpp ../ip/ip_tests.cpp ../os/os_tests.cpp ../strings/strings_tests.cpp ../http/http_tests.cpp)
target_link_libraries(cache_tests gmock gtest glog pthread)
