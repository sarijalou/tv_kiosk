import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle
{
property int colect_allprice : 0
    //    Rectangle
    //    {
    //        id:sarbarg_id
    //        width:parent.width
    //        height:parent.height/10
    //        color: 'green'

    //        Button
    //        {
    //            anchors.right: parent.right
    //            text: "back"

    //            onClicked:
    //            {
    //                ss1.push('Dogozine.qml')
    //            }
    //        }

    //        Button
    //        {
    //            anchors.left: parent.left
    //            text: "fara_karbar"

    //            onClicked:
    //            {
    //                ss1.push('FaraKarbar.qml')
    //            }
    //        }
    //    }

    color:"green"
    Rectangle
    {
        id:list_rect_id
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
                    ListFood
                    {

                        width:parent.width/6

                        //height: fl1.height
                        text:order_product[index][1]
                        src:order_product[index][2]
                        price:order_product[index][3].toString()
                        teddadd:order_product[index][4].toString()
                        allprice: (order_product[index][3]*order_product[index][4]).toString()


                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"

                        onClicked2:{
                            colect_allprice = 0
                            if (order_product[index][4])
                            {
                            order_product[index][4]=order_product[index][4]-1}
                            teddadd=order_product[index][4].toString()
                            allprice=(order_product[index][3]*order_product[index][4]).toString()
                            for (var i = 0; i < order_product.length; i++)
                            {
                                var item = order_product[i];
                                colect_allprice=colect_allprice+(item[3] * item[4])
                                // Item already exists, increment its quantity
                                //item[4]++;
                                //                        console.log(colect_allprice)

                                //                         return ;

                            }
                            text2_id.text=colect_allprice;

                            console.log(order_product, colect_allprice)
                        }

                        onClicked3:{
                            colect_allprice = 0
                            order_product[index][4]=order_product[index][4]+1
                            teddadd=order_product[index][4].toString()
                            allprice=(order_product[index][3]*order_product[index][4]).toString()
                            //                          allprice=allprice.toString()
                            for (var i = 0; i < order_product.length; i++)
                            {
                                var item = order_product[i];
                                colect_allprice=colect_allprice+(item[3] * item[4])
                                // Item already exists, increment its quantity
                                //item[4]++;
                                //                        console.log(colect_allprice)

                                //                         return ;

                            }
                            text2_id.text=colect_allprice;
                            console.log(order_product,colect_allprice)
                        }






                    }
                }


            }



            clip: true

        }

        ScrollBar.vertical: ScrollBar{}
    }



    Button
    {
        anchors.right: parent.right
        text: "back"

        onClicked:
        {
            ss1.push('Dogozine.qml')
        }
    }

    Button
    {
        anchors.left: parent.left
        text: "next"

        onClicked:
        {
            ss1.push('Shomareh.qml')
        }
    }
    Rectangle
    {
        id:all_price_id
        anchors.left: list_rect_id.left
        width: parent.width*(1-0.15)
        height: parent.height*1/10
        anchors.top:list_rect_id.bottom
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
    Component.onCompleted:
    {
        console.log("sssssaaaaallllaaaammmm",order_product)
    }
}
