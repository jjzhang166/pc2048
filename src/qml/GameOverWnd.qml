import QtQuick 2.0
import "logic.js" as Logic

Rectangle {
    id: gameOverRect
    width: 380
    height: 380
    radius: 3;
    visible: false;
    opacity: 0.0
    color: "#00ffffff"

    property alias animateOpacity: animateOpacity

    anchors {
        right: parent.right; rightMargin: 5
        left: parent.left; leftMargin: 5
        bottom: parent.bottom; bottomMargin: 5
        top: parent.top; topMargin: 110
    }

    Text {
        id: text1
        x: 0
        y: 110
        width: 380
        height: 66
        color: "#766d65"
        text: qsTr("游戏结束")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.family: "微软雅黑"
        font.pixelSize: 40
    }

    Rectangle {
        id: rectangle2
        x: 90
        y: 200
        width: 200
        height: 43
        color: "#8c7963"
        radius: 3
        clip: false

        Text {
            x: 87
            y: 14
            color: "#e2e1d6"
            text: qsTr("再来一次")
            font.bold: true
            font.family: "微软雅黑"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 21
        }
        MouseArea {
            anchors.fill: parent;
            onClicked: Logic.restart();
        }
    }

    NumberAnimation {
        id: animateOpacity
        target: gameOverRect
        properties: "opacity"
        from: 0.00
        to: 0.80
        duration: 1000
   }
}
