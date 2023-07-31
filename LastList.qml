// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5


Item
{
    id: root
//    width:10000
    height:50
//    property alias  src:imgg.source
//    property alias src2:imgg2.source
//    property alias src3:imgg3.source

    property int duration: 250
    property alias text: label.text
    property alias price: label2.text
    property alias teddadd:label3.text
    property alias allprice:label4.text
    signal clicked
    signal clicked2
    signal clicked3



    Row
    {
//        anchors.left: imgg.right
        anchors.verticalCenter: parent.verticalCenter
//      anchors.horizontalCenter: parent.horizontalCenter
        spacing: 10
        Label
        {
            id: label

            text: qsTr("Label")
            anchors.verticalCenter: parent.verticalCenter


            color: "#443224"
            font.pixelSize: 15

        }
        Label
        {
            id: label2
//            x:parent.width*0.7
            text: qsTr("")
            anchors.verticalCenter: parent.verticalCenter

            //              anchors.horizontalCenter: label2.horizontalCenter
//            anchors.left :label.right
            color: "#443224"
            font.pixelSize: 15

        }

        Text
        {
            id: label3

            text: qsTr("s")
            anchors.verticalCenter: parent.verticalCenter
//            x: parent.width*70/100

//            anchors.left :label2.right
            color: "#443224"
            font.pixelSize: 15

        }

        Text
        {
            id: label4
//            x:root.width*0.9
            text: qsTr("s")
            anchors.verticalCenter: parent.verticalCenter
//            x: parent.width*90/100
//          anchors.left :label3.right
            color: "#443224"
            font.pixelSize: 15

        }
    }






}

