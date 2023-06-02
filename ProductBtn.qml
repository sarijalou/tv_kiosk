// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5
Item
{
    id: root

    property alias  src:imgg.source
    property int duration: 250
    property alias text: label.text
    property alias price: label2.text
    signal clicked
//    property alias width: width
//    property alias height: height

height:width
    Image
    {
        id:imgg
        source: "images/pack.png"
        signal clicked
        anchors.centerIn:parent

        width: parent.width*80/100
        height: parent.height*80/100

        Label
        {
            id: label

            text: qsTr("Label")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top :parent.bottom
            color: "#443224"
            font.pixelSize: 15

        }
        Label
        {
            id: label2

            text: qsTr("Label")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top :label.bottom
            color: "#443224"
            font.pixelSize: 15

        }
    }

    //! [0]
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
        onPressed: {
            glow.visible = true
            animation1.start()
            animation2.start()
        }
    }
    //! [0]

    Rectangle {
        id: glow
        visible: false

        width: parent.width
        height: parent.height
        color: "#00000000"
        radius: 5
        scale: 1.05
        border.color: "green"
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
