import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Layouts 6.5
Rectangle
{
    //width: Screen.width/3
    //height: Screen.height/1.2

    color: "green"


    Column
    {

        anchors.horizontalCenter:  parent.horizontalCenter

        //x:parent.width/2-width/2



        Image
        {

            source:'images/download.png'
            width: 200
            height: 150
            anchors.horizontalCenter:  parent.horizontalCenter

        }
        Item
        {


            height: 50
            width: 10

        }

        Label
        {
            text: 'کجا میل می کنید'
            anchors.horizontalCenter:  parent.horizontalCenter


        }

        Item
        {
            height: 50
            width: 10

        }

        Row
        {
            id:lay_id

            spacing: 10

            Button
            {
                id : button1
                text : "درون مجموعه"
                height: 250
                width: 200

                onClicked:
                {
                    console.log("درون مجموعه",mylocation)
                    mylocation='1'
                    ss1.push('Menu_asli.qml')
                }
                onPressed:
                {
                    anim.start()
                }

                SequentialAnimation
                {
                    id: anim

                    // Expand the button
                    PropertyAnimation {
                        target: button1
                        property: "scale"
                        to: 0.9
                        duration: 150
                        easing.type: Easing.InOutQuad
                    }

                    // Shrink back to normal
                    PropertyAnimation {
                        target: button1
                        property: "scale"
                        to: 1
                        duration: 150
                        easing.type: Easing.InOutQuad
                    }


                }

                Image
                {

                    source:'images/Eat_in.png'
                    width: 200
                    height: 150
                    x:parent.width/2-width/2

                }
            }

            Button
            {


                id : button2
                text : "بیرون مجموعه"
                height: 250
                width: 200

                onClicked:
                {
                    console.log(" بیرون مجموعه",mylocation)
                    mylocation='0'
                    ss1.push('Menu_asli.qml')

                }

                onPressed:
                {

                    anim2.start()
                }

                SequentialAnimation
                {
                    id: anim2

                    // Expand the button
                    PropertyAnimation
                    {
                        target: button2
                        property: "scale"
                        to: 0.9
                        duration: 150
                        easing.type: Easing.InOutQuad
                    }

                    // Shrink back to normal
                    PropertyAnimation
                    {
                        target: button2
                        property: "scale"
                        to: 1
                        duration: 150
                        easing.type: Easing.InOutQuad
                    }


                }

                Image
                {
                    source: "images/takeaway.png"
                    width: 200
                    height: 150
                    anchors.horizontalCenter:  parent.horizontalCenter
                }


            }
        }
    }
}



