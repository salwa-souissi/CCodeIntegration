import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    id: rootUI
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    ExternPage {
        id: externPageUI
    }
    //    TestCaanvas {
    //        id: testCaanvasUI
    //        anchors.top: externPageUI.bottom
    //        anchors.topMargin: 10
    //        width: 200
    //        height: 150
    //    }
    //    TestWave {
    //        id: testWaveUI
    //        anchors.top: testCaanvasUI.bottom
    //        anchors.topMargin: 10
    //        width: rootUI.width * 0.5
    //        height: rootUI.height * 0.5
    //        _Percentage: 0.2
    //    }
    //    SingleWave {
    //        _Percentage: 0.5
    //        width: 50
    //        height: 50
    //        _VerticalAlignement: "Down"
    //    }
    //    WavesRepeater {
    //        width: rootUI.width / 5
    //        height: rootUI.height / 5
    //        _WavesNumber: 5
    //        _WavesPercentage: 0.5
    //        anchors.top: testCaanvasUI.bottom
    //        anchors.topMargin: 10
    //    }
}
