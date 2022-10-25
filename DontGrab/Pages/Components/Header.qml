import QtQuick 2.15
import QtQuick.Layouts 1.15
import Icons 1.0

import Buttons 1.0
import Colors 1.0

Item {
  id: paiHeader
  anchors.top: parent.top
  height: parent.height * 0.08
  width: parent.width
  property bool test: false
  z: 1
  states: [
    State {
      name: "Desk"
      when: background.width >= 1000
      AnchorChanges {
        target: paiHeader

        anchors.left: parent.left
      }
      PropertyChanges {
        target: paiHeader
        width: parent.width * 0.04
        height: parent.height
      }

      PropertyChanges {
        target: gridLayoutDesk
        visible: true
      }
      PropertyChanges {
        target: paiButton
        visible: false
      }
    }
  ]
  //******************** começo header ********************
  Rectangle {
    id: header
    anchors.fill: parent
    color: PaletaCores.cor2

    //******************** começo menu mobile ********************
    GridLayout {
      id: gridLayoutMobile
      anchors.fill: parent
      columns: 1
      rows: 1
      rowSpacing: 0
      columnSpacing: 0
      visible: true
      Rectangle {
        id: paiButton
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.maximumWidth: 60
        color: "transparent"
        visible: true
        ButtonIcon {
          id: btnBurguer

          color: "transparent"

          anchors.centerIn: parent
          icon.path: test === false ? IconVault.menuBurguer : IconVault.x
          height: parent.height / 2
          width: height

          TapHandler {
            id: tap
            onTapped: test === false ? test = true : test = false
          }
        }
      }
    }

    //******************** fim menu mobiele ********************

    //******************** começo menu desk ********************
    GridLayout {
      id: gridLayoutDesk
      anchors.fill: parent
      columns: 1
      rows: 1
      rowSpacing: 0
      columnSpacing: 0
      visible: false
      Rectangle {
        id: abrigaButtons
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.maximumHeight: parent.height / 6
        Layout.alignment: Qt.AlignTop
        Layout.topMargin: parent.height / 2.3
        color: "transparent"
        ColumnLayout {
          anchors.fill: parent

          spacing: 0
          Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "transparent"
            Rectangle {
              width: parent.width * 0.8
              height: parent.height * 0.8
              radius: width
              anchors.centerIn: parent
              color: hoverHad2.hovered ? PaletaCores.cor4 : "transparent"
              ButtonIcon {
                id: btnHome
                color: "transparent"

                icon.path: IconVault.icoHome
                TapHandler {
                  onTapped: {

                    stack.currentIndex = 0
                  }
                }
                HoverHandler {
                  id: hoverHad2
                  cursorShape: Qt.PointingHandCursor
                }
                anchors.centerIn: parent
                height: parent.height / 2.4
                width: height
              }
            }
          }
          Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            color: "transparent"
            Rectangle {
              width: parent.width * 0.8
              height: parent.height * 0.8
              radius: width
              anchors.centerIn: parent
              color: hoverHad.hovered ? PaletaCores.cor4 : "transparent"
              ButtonIcon {
                id: btnTable
                color: "transparent"

                TapHandler {

                  onTapped: {

                    stack.currentIndex = 1
                  }
                }
                HoverHandler {
                  id: hoverHad
                  cursorShape: Qt.PointingHandCursor
                }
                anchors.centerIn: parent
                icon.path: IconVault.table

                height: parent.height / 2.4
                width: height
              }
            }
          }
        }
      }
    }
    //******************** fim menu desk ********************
  }

  //******************** fim header ********************
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:3;height:48;width:640}
}
##^##*/

