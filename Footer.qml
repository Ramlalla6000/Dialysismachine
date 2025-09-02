import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: footer

    Layout.fillWidth: true
    Layout.preferredHeight: 25
    //radius: 10
    property int fontSize: 14
    color:"grey"

    Text {
        id: clockText
        anchors.centerIn: parent
        font.bold: true
        font.pointSize: footer.fontSize
        color: "white"
        text: Qt.formatTime(new Date(), "hh:mm:ss AP")   // 12h format
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: clockText.text = Qt.formatTime(new Date(), "hh:mm:ss AP")
    }
}
