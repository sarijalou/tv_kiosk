import QtQuick 6.5
import QtQuick.Controls 6.5


Rectangle {
    //    width: Screen.width/3
    //    height: Screen.height/1.2


//    property bool dokmeh: false
    color:"green"
    Button{
        text:'منو اصلی'
        onClicked: {

            ss1.replace("Menu_asli.qml")

        }


    }






    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        x :20;   y :20
        spacing: 10

        Label{
            anchors.horizontalCenter: parent.horizontalCenter
            id : firstNameRectId
            //            width : 160
            //            height:20
            color : "beige"
            text : "شماره موبایل خود را وارد کنید "

        }

        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter

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
        Grid
        {
            columns: 3
            spacing: 2
            Button
            {
                text: '1'
                height:width

                onClicked:{mystr=mystr+'1'}
            }
            Button
            {
                text: '2'
                height:width

                onClicked:{mystr=mystr+'2'}
            }
            Button
            {
                text: '3'
                height:width

                onClicked:{mystr=mystr+'3'}
            }
            Button
            {
                text: '4'
                height:width

                onClicked:{mystr=mystr+'4'}
            }
            Button
            {
                text: '5'
                height:width

                onClicked:{mystr=mystr+'5'}
            }
            Button
            {
                text: '6'
                height:width

                onClicked:{mystr=mystr+'6'}
            }
            Button
            {
                text: '7'
                height:width

                onClicked:{mystr=mystr+'7'}
            }
            Button
            {
                text: '8'
                height:width

                onClicked:{mystr=mystr+'8'}
            }
            Button
            {
                text: '9'
                height:width

                onClicked:{mystr=mystr+'9'}
            }
            Button
            {
                text:'clear'
                height:width

                onClicked:{ mystr='09'}
            }
            Button
            {
                text: '0'
                height:width


                onClicked:{mystr=mystr+'0'}
                enabled: true
            }


            Button
            {
                text: 'f'
                height:width

                onClicked:{mystr=mystr.slice(0,-1)}
            }
        }


    }

    Button{
        property bool dokmeh: false
        anchors.right:parent.right
        text:' بعدی'
       enabled: baadi()

       function baadi(){
         if(mystr.length==11){
         dokmeh=true
         }
         if(mystr.length!=11){
         dokmeh=false
         }
        return dokmeh
       }

        onClicked: {
            ss1.push("Fysh.qml")
            //console.log (mystr.length)
            manager.dbbbd(mystr,'unknown')

        }




    }
}

