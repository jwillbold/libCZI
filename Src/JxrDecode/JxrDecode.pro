TEMPLATE = lib

TARGET = JxrDecodeStatic

CONFIG = staticlib

PRECOMPILED_HEADER = stdafx.h

linux-g++ {
    QMAKE_CXXFLAGS += -pthread -std=c++11 -fPIC -D_FILE_OFFSET_BITS=64
    QMAKE_CFLAGS += -D__ANSI__ -fPIC -D_FILE_OFFSET_BITS=64
}

SOURCES = \
      JxrDecode.cpp \
      stdafx.cpp \
      Jxr/adapthuff.c \
      Jxr/decode.c \
      Jxr/encode.c \
      Jxr/image.c \
      Jxr/JXRGlue.c \
      Jxr/JXRGlueJxr.c \
      Jxr/JXRGluePFC.c \
      Jxr/JXRMeta.c \
      Jxr/JXRTest.c \
      Jxr/JXRTestBmp.c \
      Jxr/JXRTestHdr.c \
      Jxr/JXRTestPnm.c \
      Jxr/JXRTestTif.c \
      Jxr/JXRTestWrapper.c \
      Jxr/JXRTestYUV.c \
      Jxr/JXRTranscode.c \
      Jxr/perfTimerANSI.c \
      Jxr/postprocess.c \
      Jxr/segdec.c \
      Jxr/segenc.c \
      Jxr/strcodec.c \
      Jxr/strdec.c \
      Jxr/strdec_x86.c \
      Jxr/strenc.c \
      Jxr/strenc_x86.c \
      Jxr/strFwdTransform.c \
      Jxr/strInvTransform.c \
      Jxr/strPredQuant.c \
      Jxr/strPredQuantDec.c \
      Jxr/strPredQuantEnc.c \
      Jxr/strTransform.c

HEADERS = \
      JxrDecode.h \
      stdafx.h \
      targetver.h \
      Jxr/common.h \
      Jxr/decode.h \
      Jxr/encode.h \
      Jxr/JXRGlue.h \
      Jxr/JXRMeta.h \
      Jxr/JXRTest.h \
      Jxr/JXRTestWrapper.h \
      Jxr/perfTimer.h \
      Jxr/strcodec.h \
      Jxr/strTransform.h \
      Jxr/windowsmediaphoto.h \
      Jxr/_x86/_x86.h \
      Jxr/priv_guiddef.h \
      Jxr/wmsal.h \
      Jxr/wmspecstring.h \
      Jxr/wmspecstrings_adt.h \
      Jxr/wmspecstrings_strict.h \
      Jxr/wmspecstrings_undef.h \
      Jxr/jxr_defines.h
