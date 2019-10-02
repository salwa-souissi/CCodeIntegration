import QtQuick 2.0

Item {
    property real _Percentage: 0.5
    property int _WavesNumber: 4

    property string _VerticalAlignement: "Up"
    id: rootUI
    Rectangle {
        color: "yellow"
        anchors.centerIn: maskUI
        anchors.fill: maskUI
    }
    Path {
        id: pathLighteUI
        startX: 0
        startY: rootUI.height / 2
        PathCurve {
            id: firstCurveUI
            x: rootUI.width / _WavesNumber * 2
            y: _VerticalAlignement == "Up" ? rootUI.height / 2 - rootUI.height
                                             * _Percentage : rootUI.height / 2
                                             + rootUI.height * _Percentage
        }
        PathCurve {
            x: rootUI.width
            y: rootUI.height / 2
        }
    }

    Canvas {
        id: maskUI
        antialiasing: true
        renderStrategy: Canvas.Threaded
        anchors.fill: parent

        onPaint: {

            var context = getContext('2d')
            context.reset()
            context.beginPath()
            context.path = pathLighteUI
            context.fillStyle = "red"
            context.stroke()
        }

        clip: true
    }
}
