cmake_minimum_required(VERSION 2.8)

project(libCZI)

set(CMAKE_CXX_STANDARD 11)

IF(UNIX)
  find_package (Threads)
  set(CMAKE_POSITION_INDEPENDENT_CODE ON)
  add_definitions(-D_FILE_OFFSET_BITS=64)

  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -D__ANSI__")
ENDIF()

add_subdirectory(JxrDecode)
add_subdirectory(libCZI)

IF(NOT LIBCZI_SKIP_CZICMD)
  add_subdirectory(CZICmd)
ENDIF()
