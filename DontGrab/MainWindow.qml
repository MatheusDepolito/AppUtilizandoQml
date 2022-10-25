import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import Colors 1.0
import Buttons 1.0

import "./Pages"
import "./Pages/Components"

Rectangle {
  id: mainWindow
  color: PaletaCores.cor2

  Background {
    id: background
  }
  Header {
    id: header
  }
  Body {
    id: body

    StackLayout {
      id: stack
      anchors.fill: parent
      currentIndex: 0
      Page1 {
        id: pageOne
      }
      Page2 {
        id: pageTwo
      }
    }
  }
}
