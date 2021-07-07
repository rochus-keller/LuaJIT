
QT       += core
QT       -= gui

TARGET = LuaJIT
TEMPLATE = app

INCLUDEPATH +=  .. ../../


LIBS += -ldl


CONFIG(debug, debug|release) {
        DEFINES += _DEBUG
}

QMAKE_CXXFLAGS += -Wno-reorder -Wno-unused-parameter -Wno-unused-function -Wno-unused-variable

HEADERS += \
    buildvm_arch.h \
    buildvm.h

SOURCES += \
    buildvm_asm.c \
    buildvm_fold.c \
    buildvm_lib.c \
    buildvm_peobj.c \
    buildvm.c







