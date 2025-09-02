import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtCharts

Item {
    property int parentWidth : 0
    property int parentHeight : 0

    Rectangle {
        id : outerRect
        width : parentWidth
        height : parentHeight
        Row {
            anchors.fill: parent

            // Vertical tab column
            Column {
                id: tabs
                width: parentWidth / 6
                height : parentHeight
                spacing: 2
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                TabButton {
                    id:firstTabBtn
                    text: "Home"
                    checked: stack.currentIndex === 0
                    onClicked: {

                        stack.currentIndex = 0
                        opacity = 1
                        secondTabBtn.opacity = 0.4
                        thirdTabBtn.opacity = 0.4
                    }
                    width : outerRect.width/6.5
                    height : outerRect.height / 3
                    background: Rectangle {
                        color: firstTabBtn.checked ? "#1976d2" : "#eeeeee"
                        border.color: "#888"
                        radius: 6
                    }
                    contentItem: Image {

                        source: "qrc:icons/firstTabIcon.png"
                        fillMode : Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }


                }

                TabButton {
                    id: secondTabBtn
                    text: "Profile"
                    checked: stack.currentIndex === 1
                    onClicked: {
                        opacity = 1
                        firstTabBtn.opacity = 0.3
                        thirdTabBtn.opacity = 0.3
                        stack.currentIndex = 1
                    }

                    width : outerRect.width/6.5
                    height : outerRect.height / 3
                    background: Rectangle {
                        color: secondTabBtn.checked ? "#1976d2" : "#eeeeee"
                        border.color: "#888"
                        radius: 6
                    }
                    contentItem: Image {

                        source: "qrc:icons/secondTabIcon.png"
                        fillMode : Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }

                TabButton {
                    id: thirdTabBtn
                    text: "Settings"
                    checked: stack.currentIndex === 2
                    onClicked: {
                        opacity = 1
                        firstTabBtn.opacity = 0.4
                        secondTabBtn.opacity = 0.4
                        stack.currentIndex = 2
                    }

                    width : outerRect.width/6.5
                    height :  outerRect.height / 3
                    background: Rectangle {
                        color: thirdTabBtn.checked ? "#1976d2" : "#eeeeee"
                        border.color: "#888"
                        radius: 6
                    }
                    contentItem: Image {

                        source: "qrc:icons/thirdTabIcon.png"
                        fillMode : Image.PreserveAspectFit
                        anchors.centerIn: parent
                    }
                }
            }

            // Content stack
            StackLayout {
                id: stack
                anchors.fill: parent
                anchors.leftMargin: tabs.width - 15
                currentIndex: 2


                Rectangle {
                    color: "#f8f9fa"
                    height : parentHeight
                    Label {
                        anchors.centerIn: parent;
                        text: "Home Page"
                    }
                }
                Rectangle {
                    color: "#e8f5e9"
                    height :  parentHeight

                }

                //Rectangle{
                //    color: "#e8f5e9"
                //    height :  parentHeight
                    ChartView {
                        anchors.fill: parent
                        antialiasing: true
                        legend.alignment: Qt.AlignTop
                        anchors.leftMargin: -3
                        // X-Axis (time in hours)
                        ValueAxis {
                            id: xAxis
                            min: 0
                            max: 4
                            tickCount: 5
                            titleText: "h"
                        }
                        // Y-Axis Left (mmHg, mL/min)
                        ValueAxis {
                            id: yAxisLeft
                            min: -400
                            max: 400
                            tickCount: 9
                            titleText: "mmHg mL/min"
                        }
                        // Y-Axis Right (UF rate L/h mL/min)
                        ValueAxis {
                            id: yAxisRight
                            min: 0
                            max: 2.5
                            tickCount: 6
                            titleText: "L/h mL/min"
                        }
                        // Example Series 1 - Blue line
                        LineSeries {
                            name: "Ven/Art"
                            axisX: xAxis
                            axisY: yAxisLeft
                            color: "blue"
                            width: 2

                            XYPoint { x: 0; y: 100 }
                            XYPoint { x: 1; y: 120 }
                            XYPoint { x: 2; y: 115 }
                            XYPoint { x: 3; y: 118 }
                            XYPoint { x: 4; y: 116 }
                        }
                        // Example Series 2 - Red line
                        LineSeries {
                            name: "Qb"
                            axisX: xAxis
                            axisY: yAxisLeft
                            color: "red"
                            width: 2

                            XYPoint { x: 0; y: 0 }
                            XYPoint { x: 1; y: 50 }
                            XYPoint { x: 2; y: 55 }
                            XYPoint { x: 3; y: 53 }
                            XYPoint { x: 4; y: 54 }
                        }
                        // Example Series 3 - Green line (UF rate)
                        LineSeries {
                            name: "UF rate"
                            axisX: xAxis
                            axisY: yAxisRight
                            color: "green"
                            width: 2

                            XYPoint { x: 0; y: 0.2 }
                            XYPoint { x: 1; y: 1.0 }
                            XYPoint { x: 2; y: 1.1 }
                            XYPoint { x: 3; y: 1.05 }
                            XYPoint { x: 4; y: 1.2 }
                        }
                    }
                //}
            }
        }
    }


}
