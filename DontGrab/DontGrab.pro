QT += quick

CONFIG -= qml_debug
CONFIG += c++17
SOURCES += \
    core/componentcreatorengine.cpp \
    core/filewatcher.cpp \
    main.cpp

#resources.files = main.qml //Parar de criar diretorio QML
#resources.prefix = /$${TARGET} //Parar de criar diretorio QML
RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =$$PWD/../component_library
#ANDROID_EXTRA_LIBS = C:/Users/Matheus/Desktop/ConstPast/component_library

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    core/componentcreatorengine.h \
    core/filewatcher.h
