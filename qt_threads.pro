QT=core gui widgets testlib network
# multimedia
TEMPLATE = app
CONFIG   -= console
CONFIG   += app_bundle
DEFINES  += QT_NO_SSL

# if you are using Shadow build, you need to get the output folder
CONFIG(release, debug|release): DESTDIR = $$OUT_PWD/build/release
CONFIG(debug, debug|release): DESTDIR = $$OUT_PWD/build/debug

unix:MOC_DIR = ./tmp
win32:MOC_DIR = ./tmp
unix:OBJECTS_DIR = ./tmp
win32:OBJECTS_DIR = ./tmp


QMAKE_CXX = clang++-14
#QMAKE_CXX = g++
DEFINES += USE_MY_STUFF

win32:INCLUDEPATH += "src/includes"
unix:INCLUDEPATH += "src/includes"

HEADERS = src/includes/*
SOURCES = src/*.cpp

win32|unix {}

win32 {
	QMAKE_LFLAGS_WINDOWS +=	-fopenmp
}

unix {
	QMAKE_CXXFLAGS += -O2 -std=c++17
}

run.commands += $$DESTDIR/qt_threads.exe
QMAKE_TARGETS += install

config.path = $$DESTDIR/config/
config.files = src/config/*.xml
resources.path = $$DESTDIR/resources/
resources.files = src/resources/*
INSTALLS += config resources

DISTFILES += \
	atomicwhile_interlocking_types.qmodel \
	Interlocked-Atomic-While.md

FORMS += \
	videocanvasform.ui
