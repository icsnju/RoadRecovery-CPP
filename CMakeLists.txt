cmake_minimum_required(VERSION 3.15)
project(RoadRecovery_CPP)

# Export no symbols by default (if the compiler supports it).
# This makes e.g. GCC's "visibility behavior" consistent with MSVC's.
# On Windows/MSVC this is a noop.
if (NOT APPLE)
    set(CMAKE_C_VISIBILITY_PRESET hidden)
    set(CMAKE_CXX_VISIBILITY_PRESET hidden)
endif ()

set(CMAKE_CXX_STANDARD 14)

#I am using Mac OS
#If you run this project on Windows, you have to replace lib/*.dylib with lib/*.ddl.
#For obtaining ddl file, you should refer to the building page
#in https://github.com/saprykin/plibsys/wiki/Building-library.
file(GLOB LIBRARIES1 "include/plibsys-build/*.dylib")
file(GLOB LIBRARIES2 "include/plibsys-build/*.dll")
file(GLOB LIBRARIES3 "include/plibsys-build/*.so")
# Always include the source and build directories in the include path.
set(CMAKE_INCLUDE_CURRENT_DIR ON)

#.../src includes all header files of plibsys.
#.../plibsys-build contains a platform-specific config file, i.e., plibsysconfig.h.
#After the compilation process, the above config file will show itself.
include_directories(include/plibsys/src/ include/plibsys-build/)

add_library(shared SHARED src/client.cpp)
add_executable(main src/main.cpp)

# generate export header automatically
include (GenerateExportHeader)
GENERATE_EXPORT_HEADER(shared
        BASE_NAME shared
        EXPORT_MACRO_NAME SHARED_EXPORT
        EXPORT_FILE_NAME shared_EXPORTS.h
        STATIC_DEFINE SHARED_EXPORTS_BUILT_AS_STATIC)

target_link_libraries(shared ${LIBRARIES1} ${LIBRARIES2} ${LIBRARIES3})
target_link_libraries(main shared)






