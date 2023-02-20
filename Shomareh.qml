import QtQuick 2.15
import QtQuick.Controls 2.15


Rectangle {
    width: Screen.width/3
    height: Screen.height/1.2

    color:"red"
    Button{
        text:'منو اصلی'
        onClicked: {
            width=300

        }


    }


    //    property alias title: textItem.text

        Text {
            id: textItem
           text: qsTr("ext")
            anchors.centerIn: parent
            font.family: Constants.largeFont.family
           font.pixelSize: Constants.largeFont.pixelSize
        }
    Column {
        x : 10; y : 10
        spacing: 10

       Rectangle {
            id : firstNameRectId
           width : firstNameLabelId.implicitWidth + 20
            height: firstNameLabelId.implicitHeight + 20
           color : "beige"

           Text {
               id : firstNameLabelId
                anchors.centerIn: parent
               text : "FirstName :"
            }
     }

       Rectangle {
            id : firstNameTextRectId
           color : "beige"
            width: firstNameTextId.implicitWidth  + 20
           height: firstNameTextId.implicitHeight + 20

            TextInput {
                id : firstNameTextId
             anchors.centerIn: parent
                focus: true
              text : "Type in your first name"
            onEditingFinished: {
               console.log("The first name changed to :"+ text)
                }
          }


       }
  }
}

