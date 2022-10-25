import QtQuick 2.15
import Icons 1.0

Rectangle {
    id: myButton
    visible: true
    property alias myButtonn: myButton
    property alias colorPressed: myButton.welColorClicked
    property alias colorHovered: myButton.welColorHovered
    property alias colorNormal: myButton.welColorNormal

    //    opacity: hoverHandler.hovered ? 0.5 : 1
    property color welColorClicked: colorPressed
    property color welColorHovered: colorHovered
    property color welColorNormal: colorNormal

    color: tapHandler.pressed ? welColorClicked : hoverHandler.hovered ? welColorHovered : welColorNormal
    //    border.color: activeFocus ? welColorNormal : bColor
    focus: true

    HoverHandler {
        id: hoverHandler
        cursorShape: Qt.PointingHandCursor
    }

    TapHandler {
        id: tapHandler
        onTapped: myButton
    }
    //    Keys.onEnterPressed: myButton.clicked(console.log("Testing"))
}
