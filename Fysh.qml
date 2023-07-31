import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    //width: Screen.width/3
    //height: Screen.height/1.2
    property int shomaresh:0
    property int myTime
    width: Screen.width/3
    height: Screen.height/1.2

    color:"green"
    Button{
        text:'منو اصلی'
        onClicked: {

            ss1.push("Menu_asli.qml")

        }

    }
    Button{
        text:'send_pos'
        anchors.right: parent.right
        onClicked: {
        shomaresh=shomaresh+1
        myTime=manager.db_take_time()
            for (var i = 0; i < order_product.length; i++) {
                var item = order_product[i];
            manager.db_insert_to_order(mystr,item[4],myTime,mylocation,'1',item[1],item[3],1,item[0],shomaresh)
                }

            // Item does not exist, add it to the array with quantity = 1

                }


    }
    Rectangle
    {
        id:last_rect_id
        anchors.centerIn: parent

        width: parent.width*(1-0.15)
        height:parent.height*(1-0.25)

        color: 'beige'
        Flickable
        {

            anchors.fill:parent

            contentHeight: list_ColumnId.implicitHeight//+400
            //            clip: true

            Column
            {
                id : list_ColumnId
                anchors.fill: parent
                //spacing: 10


                Repeater
                {
                    model: order_product.length
                    anchors.horizontalCenter: parent.horizontalCenter
                    LastList
                    {

                        width:parent.width/6

                        //height: fl1.height
                        text:order_product[index][1]
//                        src:order_product[index][2]
                        price:order_product[index][3].toString()
                        teddadd:order_product[index][4].toString()
                        allprice: (order_product[index][3]*order_product[index][4]).toString()


                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"









                    }
                }


            }



            clip: true

        }

        ScrollBar.vertical: ScrollBar{}
    }

    Rectangle
    {
        id:all_price_id
        anchors.left: last_rect_id.left
        width: parent.width*(1-0.15)
        height: parent.height*1/10
        anchors.top:last_rect_id.bottom
        color:'blue'

        Text
        {
            id:text1_id
            //            x:root.width*0.9
            text: qsTr("قیمت کل")
            anchors.verticalCenter: parent.verticalCenter
            //            x: parent.width*90/100
            //       anchors.left :imgg3.right
            color: "#443224"
            font.pixelSize: 15

        }
        Text{
        property int  colect_allprice2:0
        id:text2_id
        anchors.verticalCenter: parent.verticalCenter
        anchors.right:parent.right
            text:
            {
                for (var i = 0; i < order_product.length; i++)
                {
                    var item = order_product[i];
                    colect_allprice2=colect_allprice2+(item[3] * item[4])
                    // Item already exists, increment its quantity
                    //item[4]++;
                    //                        console.log(colect_allprice)

                    //                         return ;

                }
                colect_allprice2;
            }




        }
    }
}
