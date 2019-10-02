import QtQuick 2.9
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

import com.controls.Handler_HomePage 1.0

Page {
    property var rootCL: QmlManagerSalwa._handler_HomePage

    Connections {
        target: rootCL
    }

    //***********************************************************************************************
    Label {
        id: labelValueUI
        text: "Value :"
        anchors.left: rootUI.left
        anchors.top: rootUI.top
        width: 100
        height: 20
    }
    Rectangle {
        id: backgroundTextEditUI
        anchors.left: labelValueUI.right
        anchors.top: rootUI.top
        anchors.leftMargin: 15
        color: "gray"
        width: 100
        height: 20
        clip: true
        TextInput {
            id: textEditUI
            anchors.centerIn: backgroundTextEditUI
            width: parent.width - 10
            height: parent.height - 10
            onDisplayTextChanged: rootCL.doCalc(parseInt(textEditUI.text))
        }
    }
    Button {
        id: buttonUI
        anchors.top: backgroundTextEditUI.bottom
        text: "Validate"
        width: 100
        height: 20
        onClicked: {

        }
    }

    Label {
        id: labelResultUI
        anchors.left: rootUI.left
        anchors.top: buttonUI.bottom
        width: 100
        height: 20
        text: rootCL._result
    }
}
