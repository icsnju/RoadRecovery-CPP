cmake_minimum_required(VERSION 3.15)
project(RoadRecovery_CPP)

set(CMAKE_CXX_STANDARD 14)

file(GLOB LIBRARIES "lib/*.dylib")

include_directories(include/clib/plibsys/src/)
include_directories(include/clib/plibsys-build/)
add_executable(RoadRecovery_CPP client.cpp client.h)
target_link_libraries(RoadRecovery_CPP ${LIBRARIES})

