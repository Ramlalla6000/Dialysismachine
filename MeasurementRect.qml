import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
Rectangle {
    id:itemBox
    //anchors.centerIn: parent
    radius: 10
    border.width: 1
    border.color: "black"
    //Exposed Properties
    property string itemTextValue: "Item"
    property string unitTextValue: "Unit"
    property string measurementTextValue: "123"
    property string extraTextValue: "kg"
    gradient: Gradient {
        orientation: Gradient.Vertical
        GradientStop { position: 0.0; color: "#65CAF6" }// Blue header light
        GradientStop { position: 0.35; color: "#0C8EC6" } // Blue header right
        GradientStop { position: 0.36; color: "#f0f0f0" }
        GradientStop { position: 1.0; color: "#f0f0f0" }
    }
    ColumnLayout {
        anchors.fill: itemBox
        anchors.margins: 8
        RowLayout {
            Layout.fillWidth: true
            Layout.preferredHeight: itemBox.height * 0.35   // match blue area
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Text {
                id: itemText
                text: itemBox.itemTextValue
                color: "black"
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                font.pointSize: 10
                font.bold: true
            }
            Item { Layout.fillWidth: true } // spacer
            Text {
                id: unitText
                text: itemBox.unitTextValue
                color: "black"
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                font.pointSize: 10
                font.bold: true
                horizontalAlignment: Text.AlignRight
            }
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.preferredHeight: itemBox.height * 0.65   // match white area
            spacing: 20
            Rectangle{
                Layout.fillHeight: true
                Layout.fillWidth: true
                color: "transparent"
                Text {
                    id: measurementText
                    text: itemBox.measurementTextValue
                    color: "black"
                    //Layout.alignment: Qt.AlignVCenter
                    anchors.centerIn: parent
                    font.pointSize: 40
                    font.bold: true
                }
                Text {
                    id: unitAboveText
                    text: itemBox.extraTextValue
                    color: "gray"
                    font.pointSize: 20
                    anchors.top: measurementText.top
                    anchors.left: measurementText.right
                }
            }
        }
    }
}
