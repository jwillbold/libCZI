cmake_minimum_required(VERSION 2.8)

project(libCZI)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_definitions(-D__LP64__ -D__ANSI__)

IF(MINGW)
    # Without this, the 'packed' attribute gets ignored
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mno-ms-bitfields")
ENDIF(MINGW)

IF(UNIX)
  add_definitions(-D_FILE_OFFSET_BITS=64)

# linking with 'thread' is necessary if we use std::thread and related under Linux it seems
#   otherwise - the program simply crashes (no build-error)
   SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -fPIC")
   SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
ENDIF(UNIX)

add_subdirectory(JxrDecode)
add_subdirectory(libCZI)

IF(NOT LIBCZI_SKIP_CZICMD)
  add_subdirectory(CZICmd)
ENDIF()
