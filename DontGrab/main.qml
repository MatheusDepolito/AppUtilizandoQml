import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
  width: 360
  height: 650
  visible: true
  title: qsTr("main")
  color: "transparent"

  Loader {
    id: mainLoader
    anchors.fill: parent
    source: "./MainWindow.qml"
    //./Pages/Login.qml
    //./MainWindow.qml
    function reload() {
      mainLoader.source = ""
      QmlEngine.clearCache()
      mainLoader.source = "./MainWindow.qml"
    }
    Connections {
      target: QmlEngine

      function onReloadUI() {
        console.log("Reloading UI")
        mainLoader.reload()
      }
    }
  }
}
