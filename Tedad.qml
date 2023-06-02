import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    width: Screen.width/3
    height: Screen.height/1.2

    color:"red"
    Button{
        text:'منو اصلی'
        onClicked: {
          ss1.push("Dogozine.qml")

        }

    }

    property alias title: textItem.text

    Text {
        id: textItem
        text: qsTr("ext")
        anchors.centerIn: parent
        font.family: Constants.largeFont.family
        font.pixelSize: Constants.largeFont.pixelSize
    }
}
