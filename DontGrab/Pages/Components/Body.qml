import QtQuick 2.15
import Colors 1.0
import QtQuick.Layouts 1.15
import Buttons 1.0

Item {
    id: paiBody
    anchors.bottom: parent.bottom
    anchors.top: header.bottom
    anchors.left: parent.left
    anchors.right: parent.right

    //  height: parent.height * 0.92 //92
    //  width: parent.width
    //  anchors.bottom: parent.bottom
    Rectangle {
        id: recBody
        anchors.fill: parent
        color: "TRANSPARENT"
        //        Rectangle {
        //            width: 100
        //            height: 100

        //            color: "blue"
        //            DragHandler {}
        //        }
    }
    states: [
        State {
            name: "desk"
            when: background.width >= 1000
            AnchorChanges {
                target: paiBody

                //        anchors.top: parent.top
                //        anchors.right: parent.right
                anchors.left: header.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right
            }
            PropertyChanges {
                target: paiBody
                //        height: parent.height
                //        width: parent.width * 0.95
            }
        },
        State {
            name: "name"
            when: header.test
            PropertyChanges {
                target: dropMenu
                opacity: 1
                enabled: true
            }
        }
    ]

    DropMenu {
        id: dropMenu
        //        visible: header.test
        opacity: 0
        enabled: false
    }
}
