import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15



    Rectangle {
        //anchors.fill: parent
        color: "#f9f9f9"

        // Outer white trapezoid
        Shape {
            id: outerTrapezoid
            anchors.centerIn: parent
            width: 300
            height: 100

            ShapePath {
                strokeWidth: 0
                fillColor: "white"
                startX: 0; startY: 0
                PathLine { x: 40; y: outerTrapezoid.height }
                PathLine { x: outerTrapezoid.width - 40; y: outerTrapezoid.height }
                PathLine { x: outerTrapezoid.width; y: 0 }
                PathLine { x: 0; y: 0 }
            }
        }

        // Inner blue trapezoid
        Shape {
            id: innerTrapezoid
            x: outerTrapezoid.x
            y: outerTrapezoid.y
            width: outerTrapezoid.width
            height: 40


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
                text: "Treatment"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                font.bold: true
                font.pointSize: 14
                color: "black"
                padding: 4

            }

        }
        Text {
            anchors.centerIn: parent
            text: "1:00"
            font.pixelSize: 48
            font.bold: true
            color: "black"
        }
    }
