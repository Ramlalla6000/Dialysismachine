import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    width: 600
    height: 300

    Rectangle {
        id: redRect
        width: 400
        height: 100
        color: "#EF484E"
        radius: 20
        anchors.centerIn: parent

        Rectangle {
            id: greenRect
            width: redRect.width / 2 + 30
            height: redRect.height
            color: "#77AA59"
            anchors.centerIn: parent
            clip: false

            // White trapezoid
            Shape {
                id: outerTrapezoid
                width: greenRect.width
                height: 65
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                z: 1

                ShapePath {
                    strokeWidth: 0
                    fillColor: "white"
                    startX: 0; startY: 0
                    PathLine { x: 40; y: outerTrapezoid.height }
                    PathLine { x: outerTrapezoid.width - 40; y: outerTrapezoid.height }
                    PathLine { x: outerTrapezoid.width; y: 0 }
                    PathLine { x: 0; y: 0 }
                }

                Text {
                        id:txtSlidervalue
                        text: Math.round(venousSlider.value)
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        //anchors.topMargin:20
                        //anchors.bottom: parent.bottom
                        font.pointSize: 14
                        font.bold: true
                        color: "black"
                    }
                Text {
                    id: txtBPMUnit
                    //text: "mm/Hg"
                    font.pointSize: 8
                    anchors.horizontalCenter: txtSlidervalue.horizontalCenter
                    anchors.verticalCenter: txtSlidervalue.verticalCenter
                    color: "gray"
                    font.bold: true
                }

            }

            // Blue trapezoid
            Shape {
                id: innerTrapezoid
                width: outerTrapezoid.width
                height: 30
                anchors.horizontalCenter: outerTrapezoid.horizontalCenter
                anchors.top: outerTrapezoid.top
                z: 2

                ShapePath {
                    strokeWidth: 0
                    fillColor: "#5298C5"
                    startX: 0; startY: 0
                    PathLine { x: 25; y: innerTrapezoid.height }
                    PathLine { x: innerTrapezoid.width - 25; y: innerTrapezoid.height }
                    PathLine { x: innerTrapezoid.width; y: 0 }
                    PathLine { x: 0; y: 0 }
                }

                Text {
                    text: "Venous"
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.bold: true
                    font.pointSize: 14
                    color: "black"
                    padding: 4
                }
            }

        }
        Slider {
                    id: venousSlider
                    width: redRect.width * 0.8
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 8
                    from: 0
                    to: 100
                    value: 50
                }



    }
}
