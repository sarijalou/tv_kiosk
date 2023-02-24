import QtQuick 2.15
import QtQuick.Controls 2.15


Rectangle {
    width: Screen.width/3
    height: Screen.height/1.2
    property string mystr: '09'
    color:"green"
    Button{
        text:'منو اصلی'
        onClicked: {
            width=300

        }


    }






    Column {

        x :20;   y :20
        spacing: 10

        Rectangle {
            id : firstNameRectId
            width : 160
            height:20
            color : "beige"

            Text {
                id : firstNameLabelId
                anchors.centerIn: parent
                text : "شماره موبایل خود را وارد کنید "
            }
        }

        Rectangle {

            id : firstNameTextRectId
            color : "beige"
            width: 120
            height: 25

            Text {
                id: name
                text:mystr
            }

            //            TextInput {
            //                id : firstNameTextId
            //                anchors.fill: parent
            //                //focus: true
            //                //text : ""
            //                onEditingFinished: {
            //                    console.log("The first name changed to :"+ text)
            //                }
            //            }



        }
        Button
        {
            text: '1'

            onClicked:{mystr=mystr+'1'}
        }
        Button
        {
            text: '2'

            onClicked:{mystr=mystr+'2'}
        }
        Button
        {
            text: '3'

            onClicked:{mystr=mystr+'3'}
        }
        Button
        {
            text: '4'

            onClicked:{mystr=mystr+'4'}
        }
        Button
        {
            text: '5'

            onClicked:{mystr=mystr+'5'}
        }
        Button
        {
            text: '6'

            onClicked:{mystr=mystr+'6'}
        }
        Button
        {
            text: '7'

            onClicked:{mystr=mystr+'7'}
        }
        Button
        {
            text: '8'

            onClicked:{mystr=mystr+'8'}
        }
        Button
        {
            text: '9'

            onClicked:{mystr=mystr+'9'}
        }
        Button
        {
            text: '0'

            onClicked:{mystr=mystr+'0'}
            enabled: false
        }

        Button
        {

            onClicked:{ mystr='09'}
        }
        Button
        {

            onClicked:{mystr=mystr.slice(0,-1)}
        }
        Button{
            text:' بعدی'
            onClicked: {
                ss1.replace("Fysh.qml")

            }

        }

    }
}

