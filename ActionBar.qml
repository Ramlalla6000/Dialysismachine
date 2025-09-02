import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout {
    id: actionBar
    spacing: 5
    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.alignment: Qt.AlignVCenter

    // Rectangle 1
    Rectangle {
        Layout.fillHeight: true
        //Layout.preferredWidth: 250
        Layout.fillWidth: true
        color: "lightgray"
        radius: 10

        RowLayout {
            anchors.centerIn: parent
            spacing: 10
            BlueButton {
                caption: "Functions"
                iconSource: "qrc:/icons/functions.png"
                Layout.preferredWidth: 80
            }
            BlueButton {
                caption: "Disinfection"
                iconSource: "qrc:/icons/disinfection.png"
                Layout.preferredWidth: 80
            }
        }
    }
    // Separator
    Rectangle {
        width: 2
        Layout.fillHeight: true
        color: "#cccccc"  // light gray line
        radius: 20
    }


    // Rectangle 2
    Rectangle {
        Layout.fillHeight: true
        //Layout.preferredWidth: 250
        Layout.fillWidth: true
        color: "lightgray"
        radius: 10

        RowLayout {
            anchors.centerIn: parent
            spacing: 10
            BlueButton {
                caption: "Blood"
                iconSource: "qrc:/icons/blood.png"
                Layout.preferredWidth: 80
            }
            BlueButton {
                caption: "Fluid"
                iconSource: "qrc:/icons/fluid.png"
                Layout.preferredWidth: 80
            }
        }
    }
    // Separator
    Rectangle {
        width: 2
        Layout.fillHeight: true
        color: "#cccccc"  // light gray line
        radius: 20
    }


    // Rectangle 3
    Rectangle {
        Layout.fillHeight: true
        //Layout.preferredWidth: 250
        Layout.fillWidth: true
        color: "lightgray"
        radius: 10

        RowLayout {
            anchors.centerIn: parent
            spacing: 10
            BlueButton {
                caption: "FluidBypass"
                iconSource: "qrc:/icons/fluidbypass.png"
                Layout.preferredWidth: 80
            }
            BlueButton {
                caption: "UltraFilteration"
                iconSource: "qrc:/icons/ultrafilteration.png"
                Layout.preferredWidth: 80
            }
        }
    }
}
