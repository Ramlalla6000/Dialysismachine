import QtQuick 2.15
import QtQuick.Layouts 1.15


Item {
    id:root
    property string alignment:"right"
    width:400
    height:100
    Rectangle{
        id:baseButton
        width:400
        height:100
        radius:30
        color:"white"
        border.color:"#FAFBFB"

        Rectangle{
                id:overlayButton
                width:parent.width*0.3
                height:parent.height*0.8
                radius:20
                //color:"#519AD1"
                gradient:Gradient {
                                        GradientStop { position: 0.0; color: "#65CAF6" }
                                        GradientStop { position: 0.25; color: "#0C8EC6" }
                                    }
                Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                Text {
                                    id: txtBlue
                                    text: qsTr("BPM")
                                    font.pointSize: 20
                                    font.bold: true
                                    anchors.centerIn: parent
                                    color:  "#457FA5"
                                }


                anchors.verticalCenter: parent.verticalCenter
                anchors.right: alignment==="right" ?parent.right:undefined
                anchors.left: alignment==="left" ? parent.left:undefined
                anchors.margins: 10
        }
        Rectangle {
                        id:whiterect
                        radius: 10
                        height: 90
                        width: 250
                        color: "#ffffff"
                        //Layout.alignment: Qt.AlignVCenter|Qt.AlignLeft
                        Layout.leftMargin:100

                        ColumnLayout {
                            anchors.margins: 10

                            spacing: 10
                            anchors.fill: parent

                            // Toolbar
                            RowLayout {
                                Layout.fillWidth: true
                                spacing: 20

                                Text {
                                    id: txtTimeBPM
                                    text: "11:02"
                                    font.pointSize: 12
                                    Layout.alignment: Qt.AlignLeft|Qt.AlignHCenter
                                    color: "black"
                                    font.bold: true
                                }

                                Item {
                                    Layout.fillWidth: true
                                }


                                Text {
                                    id: txtBeats
                                    text: "❤️82"
                                    elide: Text.ElideRight
                                    font.pointSize: 12
                                    Layout.alignment: Qt.AlignRight|Qt.AlignHCenter
                                    color: "black"
                                    font.bold: true
                                }
                            }

                            RowLayout {
                                Layout.fillWidth: true
                                spacing: 20
                                Layout.alignment:Qt.AlignHCenter

                                Text {
                                    id: txtBPMValue
                                    text: "150/100"
                                    font.pointSize: 15
                                    anchors.fill: parent
                                    font.bold: true
                                }

                            }

                            RowLayout {
                                Layout.fillWidth: true
                                spacing: 20
                                height: 200
                                Layout.alignment:Qt.AlignHCenter
                                Text {
                                    id: txtBPMUnit
                                    text: "mm/Hg"
                                    font.pointSize: 8
                                    anchors.fill: parent
                                    color: "gray"
                                    font.bold: true
                                }
                            }
    }
                        anchors.verticalCenter: overlayButton.verticalCenter
                        anchors.right: alignment==="right" ?overlayButton.left:undefined
                        anchors.left: alignment==="left" ? overlayButton.right:undefined

}
}
}
