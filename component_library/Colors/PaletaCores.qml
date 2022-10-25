pragma Singleton

import QtQuick 2.15

Item {
    QtObject {
        id: temas
        readonly property var temaLight: ["#0A0A0A", "#161616", "#1D1C1C", "#232323"]
        readonly property var temaDark: ["#645CAA", "#A084CA", "#BFACE0", "#EBC7E8"]
    }

    property var temaAtual: temas.temaLight
    property alias themes: temas

    readonly property string cor1: temaAtual[0]
    readonly property string cor2: temaAtual[1]
    readonly property string cor3: temaAtual[2]
    readonly property string cor4: temaAtual[3]
}
