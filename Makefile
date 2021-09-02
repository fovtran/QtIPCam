#############################################################################
# Makefile for building: build/debug/qt_threads
# Generated by qmake (3.1) (Qt 5.11.3)
# Project:  qt_threads.pro
# Template: app
# Command: /usr/lib/qt5/bin/qmake -o Makefile qt_threads.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = clang++-14
DEFINES       = -DQT_NO_SSL -DUSE_MY_STUFF -DQT_QML_DEBUG -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_TESTLIB_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_TESTCASE_BUILDDIR='"/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG"'
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -O2 -std=c++17 -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I. -Isrc/includes -isystem /usr/include/x86_64-linux-gnu/qt5 -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui -isystem /usr/include/x86_64-linux-gnu/qt5/QtTest -isystem /usr/include/x86_64-linux-gnu/qt5/QtNetwork -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore -Itmp -isystem /usr/include/libdrm -I. -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++
QMAKE         = /usr/lib/qt5/bin/qmake
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p
COPY          = cp -f
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
INSTALL_FILE  = install -m 644 -p
INSTALL_PROGRAM = install -m 755 -p
INSTALL_DIR   = cp -f -R
QINSTALL      = /usr/lib/qt5/bin/qmake -install qinstall
QINSTALL_PROGRAM = /usr/lib/qt5/bin/qmake -install qinstall -exe
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
TAR           = tar -cf
COMPRESS      = gzip -9f
DISTNAME      = qt_threads1.0.0
DISTDIR = /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/qt_threads1.0.0
LINK          = g++
LFLAGS        = 
LIBS          = $(SUBLIBS) -lQt5Widgets -lQt5Gui -lQt5Test -lQt5Network -lQt5Core -lGL -lpthread 
AR            = ar cqs
RANLIB        = 
SED           = sed
STRIP         = strip

####### Output directory

OBJECTS_DIR   = tmp/

####### Files

SOURCES       = src/MainThreadImpl.cpp \
		src/MyTcpSocket.cpp \
		src/MyThread.cpp \
		src/qt_threads.cpp \
		src/RenderArea.cpp \
		src/VideoWidget.cpp \
		src/Viewer.cpp \
		src/XmlConfigReader.cpp tmp/moc_HttpSocketReaderImpl.cpp \
		tmp/moc_MainThreadImpl.cpp \
		tmp/moc_MyThread.cpp \
		tmp/moc_RenderArea.cpp \
		tmp/moc_VideoWidget.cpp \
		tmp/moc_Viewer.cpp \
		tmp/moc_XmlConfigReader.cpp
OBJECTS       = tmp/MainThreadImpl.o \
		tmp/MyTcpSocket.o \
		tmp/MyThread.o \
		tmp/qt_threads.o \
		tmp/RenderArea.o \
		tmp/VideoWidget.o \
		tmp/Viewer.o \
		tmp/XmlConfigReader.o \
		tmp/moc_HttpSocketReaderImpl.o \
		tmp/moc_MainThreadImpl.o \
		tmp/moc_MyThread.o \
		tmp/moc_RenderArea.o \
		tmp/moc_VideoWidget.o \
		tmp/moc_Viewer.o \
		tmp/moc_XmlConfigReader.o
DIST          = atomicwhile_interlocking_types.qmodel \
		Interlocked-Atomic-While.md \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qml_debug.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testlib_defines.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		qt_threads.pro src/includes/HttpSocketReaderImpl.h \
		src/includes/MainThreadImpl.h \
		src/includes/MyThread.h \
		src/includes/RenderArea.h \
		src/includes/VideoWidget.h \
		src/includes/Viewer.h \
		src/includes/XmlConfigReader.h src/MainThreadImpl.cpp \
		src/MyTcpSocket.cpp \
		src/MyThread.cpp \
		src/qt_threads.cpp \
		src/RenderArea.cpp \
		src/VideoWidget.cpp \
		src/Viewer.cpp \
		src/XmlConfigReader.cpp
QMAKE_TARGET  = qt_threads
DESTDIR       = build/debug/
TARGET        = build/debug/qt_threads


first: all
####### Build rules

$(TARGET): ui_videocanvasform.h $(OBJECTS)  
	@test -d build/debug/ || mkdir -p build/debug/
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: qt_threads.pro /usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf \
		.qmake.stash \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qml_debug.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testlib_defines.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf \
		/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf \
		qt_threads.pro \
		/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Gui.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Test.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Network.prl \
		/usr/lib/x86_64-linux-gnu/libQt5Core.prl
	$(QMAKE) -o Makefile qt_threads.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/linux.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/sanitize.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/gcc-base-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-base.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/common/g++-unix.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/qconfig.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_accessibility_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_bootstrap_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_concurrent_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_core_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_dbus_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_devicediscovery_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_edid_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_egl_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfs_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eglfsdeviceintegration_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_eventdispatcher_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fb_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_fontdatabase_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_glx_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_gui_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_input_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_kms_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_linuxaccessibility_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_network_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_opengl_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_openglextensions_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_platformcompositor_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_printsupport_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_service_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_sql_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_testlib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_theme_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_vulkan_support_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_widgets_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xcb_qpa_lib_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/modules/qt_lib_xml_private.pri:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_functions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++/qmake.conf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/spec_post.prf:
.qmake.stash:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exclusive_builds.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/toolchain.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_pre.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resolve_config.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/default_post.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qml_debug.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/warn_on.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qt.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/resources.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/moc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testlib_defines.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/opengl.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/uic.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/unix/thread.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/qmake_use.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/file_copies.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/testcase_targets.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/exceptions.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/yacc.prf:
/usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/lex.prf:
qt_threads.pro:
/usr/lib/x86_64-linux-gnu/libQt5Widgets.prl:
/usr/lib/x86_64-linux-gnu/libQt5Gui.prl:
/usr/lib/x86_64-linux-gnu/libQt5Test.prl:
/usr/lib/x86_64-linux-gnu/libQt5Network.prl:
/usr/lib/x86_64-linux-gnu/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile qt_threads.pro -spec linux-g++ CONFIG+=debug CONFIG+=qml_debug

qmake_all: FORCE


all: Makefile $(TARGET)

dist: distdir FORCE
	(cd `dirname $(DISTDIR)` && $(TAR) $(DISTNAME).tar $(DISTNAME) && $(COMPRESS) $(DISTNAME).tar) && $(MOVE) `dirname $(DISTDIR)`/$(DISTNAME).tar.gz . && $(DEL_FILE) -r $(DISTDIR)

distdir: FORCE
	@test -d $(DISTDIR) || mkdir -p $(DISTDIR)
	$(COPY_FILE) --parents $(DIST) $(DISTDIR)/
	$(COPY_FILE) --parents /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/data/dummy.cpp $(DISTDIR)/
	$(COPY_FILE) --parents src/includes/HttpSocketReaderImpl.h src/includes/MainThreadImpl.h src/includes/MyThread.h src/includes/RenderArea.h src/includes/VideoWidget.h src/includes/Viewer.h src/includes/XmlConfigReader.h $(DISTDIR)/
	$(COPY_FILE) --parents src/MainThreadImpl.cpp src/MyTcpSocket.cpp src/MyThread.cpp src/qt_threads.cpp src/RenderArea.cpp src/VideoWidget.cpp src/Viewer.cpp src/XmlConfigReader.cpp $(DISTDIR)/
	$(COPY_FILE) --parents videocanvasform.ui $(DISTDIR)/


clean: compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


distclean: clean 
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) .qmake.stash
	-$(DEL_FILE) Makefile


####### Sub-libraries

mocclean: compiler_moc_header_clean compiler_moc_objc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_objc_header_make_all compiler_moc_source_make_all

check: first

benchmark: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_predefs_make_all: tmp/moc_predefs.h
compiler_moc_predefs_clean:
	-$(DEL_FILE) tmp/moc_predefs.h
tmp/moc_predefs.h: /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/data/dummy.cpp
	clang++-14 -pipe -O2 -std=c++17 -g -Wall -W -dM -E -o tmp/moc_predefs.h /usr/lib/x86_64-linux-gnu/qt5/mkspecs/features/data/dummy.cpp

compiler_moc_header_make_all: tmp/moc_HttpSocketReaderImpl.cpp tmp/moc_MainThreadImpl.cpp tmp/moc_MyThread.cpp tmp/moc_RenderArea.cpp tmp/moc_VideoWidget.cpp tmp/moc_Viewer.cpp tmp/moc_XmlConfigReader.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) tmp/moc_HttpSocketReaderImpl.cpp tmp/moc_MainThreadImpl.cpp tmp/moc_MyThread.cpp tmp/moc_RenderArea.cpp tmp/moc_VideoWidget.cpp tmp/moc_Viewer.cpp tmp/moc_XmlConfigReader.cpp
tmp/moc_HttpSocketReaderImpl.cpp: src/includes/HttpSocketReaderImpl.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/HttpSocketReaderImpl.h -o tmp/moc_HttpSocketReaderImpl.cpp

tmp/moc_MainThreadImpl.cpp: src/includes/MyThread.h \
		src/includes/VideoWidget.h \
		src/includes/RenderArea.h \
		src/includes/HttpSocketReaderImpl.h \
		src/includes/MainThreadImpl.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/MainThreadImpl.h -o tmp/moc_MainThreadImpl.cpp

tmp/moc_MyThread.cpp: src/includes/VideoWidget.h \
		src/includes/RenderArea.h \
		src/includes/HttpSocketReaderImpl.h \
		src/includes/MyThread.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/MyThread.h -o tmp/moc_MyThread.cpp

tmp/moc_RenderArea.cpp: src/includes/RenderArea.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/RenderArea.h -o tmp/moc_RenderArea.cpp

tmp/moc_VideoWidget.cpp: src/includes/RenderArea.h \
		src/includes/VideoWidget.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/VideoWidget.h -o tmp/moc_VideoWidget.cpp

tmp/moc_Viewer.cpp: src/includes/Viewer.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/Viewer.h -o tmp/moc_Viewer.cpp

tmp/moc_XmlConfigReader.cpp: src/includes/XmlConfigReader.h \
		tmp/moc_predefs.h \
		/usr/lib/qt5/bin/moc
	/usr/lib/qt5/bin/moc $(DEFINES) --include /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/tmp/moc_predefs.h -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++ -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG -I/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/includes -I/usr/include/x86_64-linux-gnu/qt5 -I/usr/include/x86_64-linux-gnu/qt5/QtWidgets -I/usr/include/x86_64-linux-gnu/qt5/QtGui -I/usr/include/x86_64-linux-gnu/qt5/QtTest -I/usr/include/x86_64-linux-gnu/qt5/QtNetwork -I/usr/include/x86_64-linux-gnu/qt5/QtCore -I/usr/include/c++/8 -I/usr/include/x86_64-linux-gnu/c++/8 -I/usr/include/c++/8/backward -I/usr/lib/gcc/x86_64-linux-gnu/8/include -I/livemounts/local/usr/local/include -I/usr/lib/gcc/x86_64-linux-gnu/8/include-fixed -I/usr/include/x86_64-linux-gnu -I/usr/include src/includes/XmlConfigReader.h -o tmp/moc_XmlConfigReader.cpp

compiler_moc_objc_header_make_all:
compiler_moc_objc_header_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_videocanvasform.h
compiler_uic_clean:
	-$(DEL_FILE) ui_videocanvasform.h
ui_videocanvasform.h: videocanvasform.ui \
		/usr/lib/qt5/bin/uic
	/usr/lib/qt5/bin/uic videocanvasform.ui -o ui_videocanvasform.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_predefs_clean compiler_moc_header_clean compiler_uic_clean 

####### Compile

tmp/MainThreadImpl.o: src/MainThreadImpl.cpp src/includes/MyThread.h \
		src/includes/VideoWidget.h \
		src/includes/RenderArea.h \
		src/includes/HttpSocketReaderImpl.h \
		src/includes/XmlConfigReader.h \
		src/includes/MainThreadImpl.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/MainThreadImpl.o src/MainThreadImpl.cpp

tmp/MyTcpSocket.o: src/MyTcpSocket.cpp src/includes/HttpSocketReaderImpl.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/MyTcpSocket.o src/MyTcpSocket.cpp

tmp/MyThread.o: src/MyThread.cpp src/includes/MyThread.h \
		src/includes/VideoWidget.h \
		src/includes/RenderArea.h \
		src/includes/HttpSocketReaderImpl.h \
		src/includes/XmlConfigReader.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/MyThread.o src/MyThread.cpp

tmp/qt_threads.o: src/qt_threads.cpp src/includes/MainThreadImpl.h \
		src/includes/MyThread.h \
		src/includes/VideoWidget.h \
		src/includes/RenderArea.h \
		src/includes/HttpSocketReaderImpl.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qt_threads.o src/qt_threads.cpp

tmp/RenderArea.o: src/RenderArea.cpp src/includes/RenderArea.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/RenderArea.o src/RenderArea.cpp

tmp/VideoWidget.o: src/VideoWidget.cpp src/includes/VideoWidget.h \
		src/includes/RenderArea.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/VideoWidget.o src/VideoWidget.cpp

tmp/Viewer.o: src/Viewer.cpp src/includes/MyThread.h \
		src/includes/VideoWidget.h \
		src/includes/RenderArea.h \
		src/includes/HttpSocketReaderImpl.h \
		src/includes/Viewer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/Viewer.o src/Viewer.cpp

tmp/XmlConfigReader.o: src/XmlConfigReader.cpp src/includes/XmlConfigReader.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/XmlConfigReader.o src/XmlConfigReader.cpp

tmp/moc_HttpSocketReaderImpl.o: tmp/moc_HttpSocketReaderImpl.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_HttpSocketReaderImpl.o tmp/moc_HttpSocketReaderImpl.cpp

tmp/moc_MainThreadImpl.o: tmp/moc_MainThreadImpl.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_MainThreadImpl.o tmp/moc_MainThreadImpl.cpp

tmp/moc_MyThread.o: tmp/moc_MyThread.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_MyThread.o tmp/moc_MyThread.cpp

tmp/moc_RenderArea.o: tmp/moc_RenderArea.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_RenderArea.o tmp/moc_RenderArea.cpp

tmp/moc_VideoWidget.o: tmp/moc_VideoWidget.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_VideoWidget.o tmp/moc_VideoWidget.cpp

tmp/moc_Viewer.o: tmp/moc_Viewer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_Viewer.o tmp/moc_Viewer.cpp

tmp/moc_XmlConfigReader.o: tmp/moc_XmlConfigReader.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_XmlConfigReader.o tmp/moc_XmlConfigReader.cpp

####### Install

install_config: first FORCE
	@test -d $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/config/ || mkdir -p $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/config/
	-$(QINSTALL) /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/config/config.xml $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/config/config.xml

uninstall_config: FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/config/config.xml
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/config/ 


install_resources: first FORCE
	@test -d $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/resources/ || mkdir -p $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/resources/
	-$(QINSTALL) /opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/src/resources/thumb.png $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/resources/thumb.png

uninstall_resources: FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/resources/thumb.png
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/SERVER/QCAMIP/videothread-ipcam-qt5-ORIG/build/debug/resources/ 


install: install_config install_resources  FORCE

uninstall: uninstall_config uninstall_resources  FORCE

FORCE:

