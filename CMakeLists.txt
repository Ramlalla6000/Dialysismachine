cmake_minimum_required(VERSION 3.16)

project(Dialysismachine VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Charts)

qt_standard_project_setup(REQUIRES 6.8)
qt_add_resources(APP_RESOURCES resources.qrc)

qt_add_executable(appDialysismachine
    main.cpp
    ${APP_RESOURCES}
)

qt_add_qml_module(appDialysismachine
    URI Dialysismachine
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES PostTreatmentUI.qml
        QML_FILES Redrectangle.qml
        QML_FILES Layeredbutton.qml
        QML_FILES MeasurementRect.qml
        QML_FILES DisplayTabView.qml
        RESOURCES resources.qrc
        RESOURCES
        QML_FILES Footer.qml
        QML_FILES ActionBar.qml
        QML_FILES BlueButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appDialysismachine PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appDialysismachine
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appDialysismachine
    PRIVATE Qt6::Quick Qt6::Charts
)

include(GNUInstallDirs)
install(TARGETS appDialysismachine
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
