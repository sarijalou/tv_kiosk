import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Item {
    id: root
    height:width

    property alias src: imgg.source
    property int duration: 250
    property alias text: label.text
    signal clicked

    Rectangle {
        id: background
        color: "#555555"
        border.width: 1
        border.color: "#000000"
        radius: 5
        anchors.fill: parent
    }

    Image {
        id: imgg
        source: ""
        anchors.centerIn: parent
        width: parent.width * 80 / 100
        height: parent.height * 80 / 100
    }

    Label {
        id: label
        text: ""
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: imgg.bottom
        color: "#ffffff"
        font.pixelSize: 10
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
        onPressed: {
            glow.visible = true
            animation1.start()
            animation2.start()
        }
    }

    Rectangle {
        id: glow
        visible: false
        width: parent.width
        height: parent.height
        color: "#00000000"
        radius: 5
        scale: 1.05
        border.color: "#ffffff"
    }

    PropertyAnimation {
        target: glow
        id: animation1
        duration: root.duration
        loops: 1
        from: 1.05
        to: 1.2
        property: "scale"
    }

    ParallelAnimation {
        id: animation2
        SequentialAnimation {
            PropertyAnimation {
                target: glow
                duration: root.duration
                loops: 1
                from: 0.2
                to: 1.0
                property: "opacity"
            }
            PropertyAnimation {
                target: glow
                duration: root.duration
                loops: 1
                from: 1.0
                to: 0.0
                property: "opacity"
            }

            PropertyAction {
                target: glow
                property: "visible"
                value: false
            }
        }

        SequentialAnimation {
            PropertyAction {
                target: glow
                property: "border.width"
                value: 20
            }

            PauseAnimation {
                duration: 200
            }

            PropertyAnimation {
                target: glow
                duration: root.duration
                loops: 1
                from: 20
                to: 10
                property: "border.width"
            }
        }
    }
}
