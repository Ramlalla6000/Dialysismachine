import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 1200
    height: 700
    visible: true
    title: qsTr("ak98")

    Rectangle {
        anchors.fill: parent
        color: "#E7E9E8"
    }

    ColumnLayout {
        anchors.fill: parent
        width: 1500
        height:900


        RowLayout {
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Layout.alignment: Qt.AlignLeft
            spacing:40

            ColumnLayout {//
                Layout.preferredWidth:200
                Layout.fillHeight: true
                Redrectangle {
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 100
                    Layout.fillWidth: true
                }
            }

            // Spacer
            Item {
                Layout.fillWidth: true
            }

            // PostTreatmentUI centered in fixed-size container
            //ColumnLayout{
               // Layout.preferredWidth:200
                //Layout.fillHeight: true
                //Rectangle {
                    //Layout.preferredWidth: 200
                   // Layout.preferredHeight: 100

                        PostTreatmentUI {
                            Layout.alignment: Qt.AlignVCenter|Qt.AlignTop
                            Layout.preferredWidth: 200
                            Layout.preferredHeight: 100
                        }
                   // }
           // }

            // Spacer
            Item {
                Layout.fillWidth: true
            }

            ColumnLayout {//
                Layout.preferredWidth:200
                Layout.fillHeight: true
                Redrectangle {
                    Layout.alignment: Qt.AlignRight
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 100
                    Layout.fillWidth: true
                }
            }
        }
        RowLayout{

            Layout.preferredHeight:100
            Layout.fillWidth: true
            spacing:40

            ColumnLayout {
                Layout.preferredWidth: 200
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignRight
                Layout.leftMargin:10
                spacing:40
                    Layeredbutton {
                        Layout.fillWidth: true
                        alignment:"left"



                    }
            }

            ColumnLayout {
                Layout.preferredWidth: 200
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: 480
                spacing:40
                    Layeredbutton {
                        Layout.fillWidth: true
                        alignment:"right"
                    }
            }
        }
        RowLayout {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            spacing: 10

                            Repeater {
                                model: ListModel {
                                    ListElement { itemText: "Speed";    unitText: "m/s"; measurement: "42";  extra: "avg" }
                                    ListElement { itemText: "Weight";   unitText: "kg";  measurement: "76";  extra: "net" }
                                    ListElement { itemText: "Temp";     unitText: "°C";  measurement: "28";  extra: "room" }
                                    ListElement { itemText: "Pressure"; unitText: "bar"; measurement: "1.2"; extra: "abs" }
                                }

                                MeasurementRect {
                                   // Layout.preferredWidth: 250
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: 100

                                    // bind model values to properties
                                    itemTextValue: model.itemText
                                    unitTextValue: model.unitText
                                    measurementTextValue: model.measurement
                                    extraTextValue: model.extra
                                }
                            }
                        }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
            DisplayTabView {
                       parentHeight: parent.height
                       parentWidth: parent.width
                   }
            }

           // RowLayout {

            //}
            // ActionBar (fixed height, just above footer)
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 90
                color: "lightgray"

            RowLayout {
                anchors.fill: parent
                spacing: 10
                Layout.alignment: Qt.AlignVCenter

                // Left corner button
                Rectangle {
                    width: 100
                    height: parent.height - 20   // top & bottom margin effect
                    color: "transparent"         // no visible background
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 20       // left margin

                    BlueButton {
                        anchors.centerIn: parent
                        caption: "Patient"
                        iconSource: "qrc:/icons/patient.png"
                        Layout.preferredWidth: 80
                        Layout.fillHeight: true
                    }
                }

                // Left spacer
                Item {
                    //Layout.fillWidth: true
                    Layout.preferredWidth: win.width * 0.02
                }
                // Separator
                Rectangle {
                    width: 2
                    Layout.fillHeight: true
                    color: "#cccccc"  // light gray line
                    radius: 20
                }


                // Center: Action buttons inside rectangles
                ActionBar {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
                // Separator
                Rectangle {
                    width: 2
                    Layout.fillHeight: true
                    color: "#cccccc"  // light gray line
                    radius: 20
                }

                // Right spacer
                Item {
                    //Layout.fillWidth: true
                    Layout.preferredWidth: win.width * 0.02
                }



                // Right corner button
                Rectangle {
                    width: 100
                    height: parent.height - 20   // top & bottom margin effect
                    color: "transparent"         // no visible background
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.rightMargin: 20       // left margin

                    BlueButton {
                        caption: "History"
                        iconSource: "qrc:/icons/history.png"
                        Layout.preferredWidth: 80
                        Layout.fillHeight: true
                        anchors.centerIn: parent
                    }
                }
            }
        }


        //}

      //  RowLayout {
            //Footer (dynamic height, full width)
                       Footer {
                           fontSize: 10
                           Layout.fillWidth: true
                           Layout.preferredHeight: win.height * 0.05
                           color: "black"
                       }
       // }
    }
}
