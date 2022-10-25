import QtQuick 2.15
import QtQuick.Layouts 1.15
import Buttons 1.0
import Colors 1.0

Rectangle {
  id: dropMenu

  width: parent.width
  height: 200
  z: 1
  color: PaletaCores.cor2

  /*visible: header.test*/ /*true*/
  ButtonColl {
    id: btnPageOne
    anchors.top: dropMenu.top
    width: parent.width
    height: dropMenu.height * 0.33
    colorNormal: PaletaCores.cor2
    colorHovered: PaletaCores.cor3
    colorPressed: PaletaCores.cor3
    TapHandler {
      onTapped: {

        stack.currentIndex = 0
      }
    }
    Text {
      text: qsTr("Button1")
      anchors.centerIn: parent
      color: "white"
    }
  }

  ButtonColl {
    id: btnPageTwo
    anchors.top: btnPageOne.bottom

    width: parent.width
    height: dropMenu.height * 0.33
    colorNormal: PaletaCores.cor2
    colorHovered: PaletaCores.cor3
    colorPressed: PaletaCores.cor3
    TapHandler {
      onTapped: {
        stack.currentIndex = 1
      }
    }
    Text {
      text: qsTr("Button2")
      anchors.centerIn: parent
      color: "white"
    }
  }
  ButtonColl {
    id: btnPageThree
    anchors.top: btnPageTwo.bottom

    width: parent.width
    height: dropMenu.height * 0.34
    colorNormal: PaletaCores.cor2
    colorHovered: PaletaCores.cor3
    colorPressed: PaletaCores.cor3

    Text {
      text: qsTr("Button3")
      anchors.centerIn: parent
      color: "white"
    }
  }
}
