import QtQuick 2.15
import Icons 1.0
import Colors 1.0

Rectangle {
  id: myButton

  property alias icon: icon

  Icon {
    id: icon
    sourceSize.height: parent.height
    path: IconVault.menuBurguer
  }
  HoverHandler {
    id: hoverHandler
    cursorShape: Qt.PointingHandCursor
  }

  TapHandler {
    id: tapHandler
    onTapped: myButton
  }
}// Keys.onEnterPressed: myButton.clicked(console.log("Testing"))

/*            Rectangle {
              width: parent.width * 0.8
              height: parent.height * 0.8
              radius: width
              anchors.centerIn: parent
              color: hoverHad.hovered ? PaletaCores.cor4 : "transparent"*/

