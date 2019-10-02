import QtQuick 2.0

Item {

    id: rootUI
    Path {
        id: pathLighteUI
        startX: rootUI.width / 2
        startY: 0

        PathLine {
            x: rootUI.width
            y: rootUI.height - rootUI.height * 0.5
        }

        PathQuad {
            x: 0
            y: rootUI.height - rootUI.height * 0.5
            controlX: rootUI.width / 2
            controlY: rootUI.height
        }

        PathLine {
            x: rootUI.width / 2
            y: 0
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
            context.fill()
        }

        clip: true
    }
}
