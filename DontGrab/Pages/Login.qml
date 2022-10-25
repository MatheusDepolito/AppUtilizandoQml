import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Shapes 1.15
//import Colors 1.0
//import Buttons 1.0
//import Icons 1.0
import "./Components"

//import "qrc:/funcoes.js" as Func
Rectangle {
    id: login
    color: "transparent"
    anchors.fill: parent

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: cont_left

            color: "#00ffffff"
            Layout.maximumWidth: 100
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Rectangle {
            id: cont_center

            color: "#00ffffff"
            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                id: rectangle

                color: "#aaaaff"
                width: parent.width / 1.3
                height: parent.height / 1.4
                anchors.centerIn: parent

                RowLayout {
                    id: rowLayout1
                    anchors.fill: parent

                    Rectangle {
                        id: rectangle1

                        color: "#ffffff"
                        radius: 0
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        layer.enabled: true
                        layer.samples: 4

                        Rectangle {
                            id: rodajequiti
                            width: parent.width
                            height: parent.height
                            color: "transparent"
                            radius: 0
                            Rectangle {
                                id: pai
                                width: parent.width
                                height: parent.height
                                radius: 0
                                anchors.centerIn: parent

                                Rectangle {
                                    id: circ
                                    width: 100
                                    height: 100
                                    //                                    radius: height
                                    color: "red"
                                    RotationAnimation on rotation {
                                        from: 0
                                        to: 360
                                        duration: 1500
                                        running: true
                                        loops: Animation.Infinite
                                    }
                                    z: 1
                                    x: (parent.width - width) / 2
                                    y: (parent.height - height) / 2
                                }

                                Shape {
                                    id: shape
                                    anchors.fill: parent
                                    ShapePath {
                                        id: path
                                        fillColor: "transparent"
                                        strokeColor: "gray"
                                        strokeWidth: 2
                                        startX: parent.width / 2
                                        startY: parent.height / 2
                                        PathAngleArc {
                                            centerX: rodajequiti.width / rodajequiti.width
                                            centerY: shape.height / 2
                                            radiusX: shape.width / 2
                                            radiusY: shape.height / 2
                                            startAngle: 0
                                            sweepAngle: 360
                                        }
                                    }
                                }
                                PathAnimation {
                                    id: pathAnimation
                                    target: circ
                                    anchorPoint: Qt.point(circ.width / 2,
                                                          circ.height / 2)
                                    orientation: PathAnimation.TopFirst
                                    endRotation: 0
                                    path: Path {
                                        startX: parent.width / 2
                                        startY: parent.height / 2
                                        pathElements: path.pathElements
                                    }
                                    loops: Animation.Infinite
                                    running: true
                                    duration: 3000
                                }
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle2

                        color: "#ffffff"
                        radius: 0
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        ColumnLayout {
                            id: columnLayout
                            anchors.fill: parent
                            spacing: 0

                            Rectangle {
                                id: image

                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Layout.maximumHeight: 100
                                color: "red"
                            }

                            Rectangle {
                                id: loginEsenha

                                color: "purple"
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                                Rectangle {
                                    id: inputArea
                                    anchors.fill: parent
                                    Rectangle {
                                        id: paiUser
                                        width: 200
                                        height: 30
                                        RowLayout {
                                            anchors.fill: parent
                                            TextField {
                                                id: username
                                                horizontalAlignment: Text.AlignLeft
                                                placeholderText: "Nome de Usuario"
                                                leftPadding: 15
                                                font.pointSize: 12
                                                Layout.fillHeight: true
                                                Layout.fillWidth: true
                                                Layout.maximumWidth: 150
                                                background: Rectangle {
                                                    color: "blue"
                                                    height: 1
                                                    anchors.bottom: parent.bottom
                                                    width: paiUser.width
                                                }
                                            }
                                        }
                                    }
                                    Rectangle {
                                        id: paiPass
                                        anchors.top: paiUser.bottom
                                        width: 200
                                        height: 30
                                        RowLayout {
                                            anchors.fill: parent
                                            spacing: 0
                                            TextField {
                                                id: password
                                                horizontalAlignment: Text.AlignLeft
                                                placeholderText: "Senha"
                                                leftPadding: 15
                                                font.pointSize: 12
                                                Layout.fillHeight: true
                                                Layout.fillWidth: true
                                                Layout.maximumWidth: 170
                                                echoMode: TextInput.Password
                                                background: Rectangle {
                                                    color: "blue"
                                                    height: 1
                                                    anchors.bottom: parent.bottom
                                                    width: paiPass.width
                                                }
                                            }
                                            ButtonIcon {
                                                Layout.fillHeight: true
                                                Layout.fillWidth: true
                                                icon.path: IconVault.eyeOff
                                                icon.sourceSize.height: 20
                                            }
                                        }
                                    }
                                }
                            }

                            Rectangle {
                                id: footer

                                color: "yellow"
                                Layout.maximumHeight: 100
                                Layout.fillHeight: true
                                Layout.fillWidth: true
                            }
                        }
                    }
                }
            }
        }

        Rectangle {
            id: cont_right

            color: "#00ffffff"
            Layout.maximumWidth: 100
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:17}
}
##^##*/

