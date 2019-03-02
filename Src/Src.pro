TEMPLATE = subdirs

#linux-g++ {
#  # linking with 'thread' is necessary if we use std::thread and related under Linux it seems
#  #   otherwise - the program simply crashes (no build-error)
#  QMAKE_CXXFLAGS += -pthread -std=c++11 -fPIC -D_FILE_OFFSET_BITS=64
#  QMAKE_CFLAGS += -D__ANSI__ -fPIC -D_FILE_OFFSET_BITS=64
#}


SUBDIRS = JxrDecode libCZI CZICmd

libCZI.depends = JxrDecode
CZICmd.depends = libCZI

