
QT       += core
QT       -= gui

TARGET = LuaJIT
TEMPLATE = app

INCLUDEPATH +=  ..

#DEFINES += LUAJIT_DISABLE_FFI

SOURCES += src/luajit.c
LIBS += -ldl

include( src/LuaJit.pri )

CONFIG(debug, debug|release) {
        DEFINES += _DEBUG
}

QMAKE_CXXFLAGS += -Wno-reorder -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable

DISTFILES += \
    src/vm_x86.dasc






