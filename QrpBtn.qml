import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5

Item {
    id: root
    height:width

    property alias src: imgg.source
    property int duration: 250
    property alias text: label.text
    property alias clr:background.color
    signal clicked

    Rectangle {
        id: background
        //color: "#555555ff"
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
        border.color: "#ffffff"
    }

    PropertyAnimation {
        target: glow
        id: animation1
        duration: root.duration
        from: 1.0
        to: 1.2
        property: "scale"
        loops: 1
        running: false
        onRunningChanged: {
            if (running) {
                glow.visible = true
            }
        }
    }

    ParallelAnimation {
        id: animation2
        PropertyAction {
            target: glow
            property: "opacity"
            value: 0.0
        }
        SequentialAnimation {
            PropertyAction {
                target: glow
                property: "visible"
                value: true
            }
            PropertyAnimation {
                target: glow
                duration: root.duration
                from: 0.0
                to: 1.0
                property: "opacity"
            }
            PropertyAnimation {
                target: glow
                duration: root.duration
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
                value: 0
            }
            PauseAnimation {
                duration: 100
            }
            PropertyAnimation {
                target: glow
                duration: root.duration
                from: 0
                to: 20
                property: "border.width"
            }
            PauseAnimation {
                duration: 100
            }
            PropertyAnimation {
                target: glow
                duration: root.duration
                from: 20
                to: 0
                property: "border.width"
            }
        }
    }
}
