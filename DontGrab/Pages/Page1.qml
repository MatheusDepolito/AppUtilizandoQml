import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Shapes 1.15
import Colors 1.0
import "./Components"

Item {
  id: item2
  Rectangle {
    width: 100
    height: 100
    color: "red"
  }
  Text {
    text: qsTr("PAGINA 1")
    color: "white"
    anchors.centerIn: parent
  }
}
