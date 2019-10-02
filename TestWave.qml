import QtQuick 2.0
import QtQuick 2.7

Item {
    property var _Percentage: 0.5

    id: rootUI
    Rectangle {
        color: "yellow"
        anchors.centerIn: maskUI
        anchors.fill: maskUI
    }

    Path {
        id: pathLighteUI
        startX: rootUI.height / 2
        startY: rootUI.height / 2

        PathCurve {
            x: rootUI.width / 4
            y: rootUI.height / 2 + rootUI.height * _Percentage
        }
        PathCurve {
            x: rootUI.width / 4 * 2
            y: rootUI.height / 2 - rootUI.height * _Percentage
        }
        PathCurve {
            x: rootUI.width / 4 * 3
            y: rootUI.height / 2 + rootUI.height * _Percentage
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
