cmake_minimum_required(VERSION 3.15)
project(RoadRecovery_CPP)

set(CMAKE_CXX_STANDARD 14)

#I am using Mac OS
#If you run this project on Windows, you have to replace lib/*.dylib with lib/*.ddl.
#For obtaining ddl file, you should refer to the building page
#in https://github.com/saprykin/plibsys/wiki/Building-library.
file(GLOB LIBRARIES "lib/*.dylib")

#.../src includes all header files of plibsys.
#.../plibsys-build contains a platform-specific config file, i.e., plibsysconfig.h.
#After the compilation process, the above config file will show itself.
include_directories(include/plibsys/src/ include/plibsys-build/)

add_executable(RoadRecovery_CPP client.cpp client.h)
target_link_libraries(RoadRecovery_CPP ${LIBRARIES})

