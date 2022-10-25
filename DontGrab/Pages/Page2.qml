import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Shapes 1.15
import Colors 1.0
import "./Components"

Item {
  id: item3

  Text {

    text: qsTr("PAGINA 2")
    color: "white"
    anchors.centerIn: parent
  }
} //layer.enabled: true//layer.samples: 4////        Text {////            text: qsTr("PAGINA 2")////            color: "white"////            anchors.centerIn: parent////        }//Rectangle {//    width: parent.width//    height: parent.height
//    color: PaletaCores.cor1
//    Rectangle {
//        id: pai
//        width: parent.width * 0.9
//        height: parent.height * 0.9
//        anchors.centerIn: parent

//        Rectangle {
//            id: circ
//            width: 100
//            height: 100
//            radius: height
//            color: "red"
//            RotationAnimation on rotation {
//                from: 0
//                to: 360
//                duration: 3000
//                running: true
//                loops: Animation.Infinite
//            }
//            z: 1
//            x: (parent.width - width) / 2
//            y: (parent.height - height) / 2
//        }

//        Shape {
//            id: shape
//            anchors.fill: parent
//            ShapePath {
//                id: path
//                fillColor: "transparent"
//                strokeColor: "gray"
//                strokeWidth: 2
//                startX: parent.width / 2
//                startY: parent.height / 2
//                PathAngleArc {
//                    centerX: shape.width / 2
//                    centerY: shape.height / 2
//                    radiusX: shape.width / 4
//                    radiusY: shape.height / 4
//                    startAngle: 0
//                    sweepAngle: 360
//                }
//            }
//        }
//        PathAnimation {
//            id: pathAnimation
//            target: circ
//            anchorPoint: Qt.point(circ.width / 2, circ.height / 2)
//            orientation: PathAnimation.TopFirst
//            endRotation: 0
//            path: Path {
//                startX: parent.width / 2
//                startY: parent.height / 2
//                pathElements: path.pathElements
//            }
//            loops: Animation.Infinite
//            running: true
//            duration: 3000
//        }
//    }
//}

