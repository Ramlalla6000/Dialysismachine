import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root
    // Size includes button + caption
    width: 90//parent.height * 0.5
    height: 90//parent.height * 0.5

    // Exposed properties
    property alias caption: captionText.text
    property url iconSource: buttonIcon.source
    property color backgroundColor: "#1CB5E0"
    property int radius: 12

    signal clicked

    Column {
        anchors.fill: parent
        anchors.margins: 2
        spacing: 4
        //horizontalAlignment: Qt.AlignHCenter

        // Button part
        Rectangle {
            id: button
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: root.height * 0.7   // take ~70% for button, 30% for caption
            radius: root.radius
            color: root.backgroundColor

            Image {
                id: buttonIcon
                anchors.centerIn: parent
                width: parent.width * 0.5
                height: parent.height * 0.5
                fillMode: Image.PreserveAspectFit
                source: iconSource
            }

            MouseArea {
                anchors.fill: parent
                onClicked: root.clicked()
                hoverEnabled: true
                onEntered: button.opacity = 0.8
                onExited: button.opacity = 1.0
                onPressed: button.scale = 0.95
                onReleased: button.scale = 1.0
            }
        }

        // Caption part
        Text {
            id: captionText
            text: "Button"
            font.pointSize: 10
            color: "black"
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
