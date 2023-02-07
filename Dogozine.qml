import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
Rectangle {
    width: Screen.width/3
    height: Screen.height/1.2

    color: "green"
    border.color: "red"
     
    image{
        source:images/
    } 

    //property alias title: textItem.text

   
    RowLayout {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.centerIn: parent

        Button {
            id : button1
            text: "Button1"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button1")
            }
            onDoubleClicked: {
                console.log("Double clicked on button1")
            }
        }

        Button{
            id : button2
            text : "Button2"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on button2")
            }
        }
    
    }
        anchors.centerIn: parent
        //font.family: Constants.largeFont.family
        //font.pixelSize: Constants.largeFont.pixelSize
    }

