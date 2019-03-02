requires(false)

TEMPLATE = app

TARGET = CZIcmd

CONFIG += console

# add_definitions(-DUNICODE -D_UNICODE)
DEFINES += UNICODE _UNICODE

# target_link_libraries(CZIcmd PRIVATE libCZI)
include(../libCZI/libCZI.pri)


linux-g++ {
# find_package(ZLIB)
# find_package(PNG)
# target_link_libraries(CZIcmd ${PNG_LIBRARIES} ${ZLIB_LIBRARIES})
# include_directories(${ZLIB_INCLUDE_DIR} ${PNG_INCLUDE_DIR})
}


# add_executable(CZIcmd  ...)
SOURCES = cmdlineoptions.cpp consoleio.cpp execute.cpp getOpt.cpp CZIcmd.cpp SaveBitmap.cpp stdafx.cpp streamimpl.cpp

HEADERS = cmdlineoptions.h consoleio.h execute.h getOpt.h inc_libCZI.h SaveBitmap.h stdafx.h streamimpl.h targetver.h utils.cpp utils.h platform_defines.h DisplaySettingsHelper.h
