import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12
Rectangle {
    //width: Screen.width/3
    //height: Screen.height/1.2

    color: "green"

    Column{

        //anchors.centerIn: parent

        x:parent.width/2-width/2


        Image {

            source:'images/download.png'
            width: 200
            height: 150
x:parent.width/2-width/2

        }
        Item {


        height: 50
        width: 10

        }

        Label{
            text: 'کجا میل می کنید'
            x:parent.width/2-width/2


        }

        Item {


        height: 50
        width: 10

        }

        Row{
            id:lay_id

spacing: 10

            Button {
                id : button1
                text: "Button1"
                height: 250
width: 200

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
                height: 250

                width: 200

                onClicked: {
                    console.log("Clicked on button2")
                }
            }

        }
    }

}

