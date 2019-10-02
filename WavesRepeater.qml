import QtQuick 2.0

Item {
    property alias _WavesNumber: wavesRepeaterUI.model
    property real _WavesPercentage: 0.5

    id: rootUI
    Row {
        Repeater {
            id: wavesRepeaterUI
            width: rootUI.width
            height: rootUI.height
            delegate: SingleWave {
                width: wavesRepeaterUI.width / _WavesNumber
                height: wavesRepeaterUI.height
                _Percentage: _WavesPercentage
                _WavesNumber: _WavesNumber
                _VerticalAlignement: index % 2 == 0 ? "Up" : "Down"
            }
        }
    }
}
