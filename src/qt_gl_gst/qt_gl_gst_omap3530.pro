#-------------------------------------------------
#
# Project created by QtCreator 2012-03-03T06:40:34
#
#-------------------------------------------------

QT       += core gui opengl
CONFIG   += console


TARGET = qt_gl_gst
TEMPLATE = app

DEFINES += UNIX OMAP3530

SOURCES += main.cpp \
    mainwindow.cpp \
    glwidget.cpp \
    pipeline.cpp \
    gstpipeline.cpp \
    tigstpipeline.cpp \
    vidthread.cpp \
    shaderlists.cpp \
    model.cpp

HEADERS  += mainwindow.h \
    glwidget.h \
    pipeline.h \
    gstpipeline.h \
    tigstpipeline.h \
    vidthread.h \
    AsyncQueue.h \
    shaderlists.h \
    model.h

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += gstreamer-0.10
}

# Model loading using Assimp:
LIBS += -L. -lassimp
INCLUDEPATH += /mnt/data/not_backedup/3d_existing_code/assimp--2.0.863-sdk/include/

# DVSDK doesn't have GFX SDK lib files in linux-devkit directory:
#LIBS += -L/mnt/data/not_backedup/Graphics_SDK_4_05_00_02/GFX_Linux_SDK/OGLES2/SDKPackage/Builds/OGLES2/LinuxOMAP3/lib \
LIBS += -L/mnt/data/not_backedup/ti-dvsdk_omap3530-evm_4_01_00_09/omap35x_graphics_sdk_4.00.00.01/GFX_Linux_SDK/OGLES2/SDKPackage/Builds/OGLES2/LinuxOMAP3/lib \
    -lIMGegl \
    -lEGL \
    -lGLESv2 \
    -lOpenVG \
    -lsrv_um 
