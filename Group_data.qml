import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Dialogs



Rectangle
{
    property int number_of_grops:1
    property var input_dbbbb:[]
    property real group_size: 20/100
    property int highlightedIndex: 0

    property var input_product: []
    property int number_of_product: 1



    Rectangle
    {
        id:fl1
        width: parent.width*group_size
        height:( parent.height*9)/10
        y:parent.height*1/10

        color: "blue"



        Flickable
        {
            anchors.fill:parent
            contentHeight: mColumnId.implicitHeight

            Column
            {
                id : mColumnId
                anchors.fill: parent

                Repeater {
                    model: number_of_grops+1
                    QrpBtn
                    {
                        width:fl1.width
                        //height: fl1.height

                        text:
                            if (index === number_of_grops)
                            {
                                "add" ;
                            }
                            else
                            {

                                input_dbbbb[index][0];
                            }

                        src:
                            if (index === number_of_grops)
                            {
                                ".img/add_btn.png" ;
                            }
                            else
                            {
                                input_dbbbb[index][1];

                            }



                        clr:
                        { if(index === highlightedIndex )
                                "red" ;
                            else
                                "blue";
                        }


                        onClicked: {
                            highlightedIndex=index

                            input_name.text=text
                            labaly.text=src
                            input_radif.text=index

                            input_product=manager.db_select_product(text)
                            console.log(input_product)
                            number_of_product=input_product.length

                        }
                    }
                }

            }
            ScrollBar.vertical: ScrollBar{}
        }
    }

    Rectangle
    {        id:fl22
        anchors.left: fl1.right
        width: parent.width*(1-group_size)
        height: parent.height*9/10
        y:parent.height*1/10
        color: 'beige'
        visible: false
        Flickable
        {
            anchors.fill:parent
            contentHeight: nColumnId.implicitHeight//+400

            Grid
            {
                id : nColumnId
                anchors.fill: parent
                columns: 3
                //spacing: 10


                Repeater
                {
                    model: number_of_product
                    ProductBtn
                    {
                        width:parent.width/3

                        //height: fl1.height
                        text:input_product[index][0]
                        src:input_product[index][2]
                        price:input_product[index][1]
                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"

                        onClicked: {



                        }
                    }


                }





            }

            ScrollBar.vertical: ScrollBar{}
        }
    }

//++++++++++++++++++++
    Rectangle
    {
        id:fl2
        anchors.left: fl1.right
        width: parent.width*(1-group_size)
        height: parent.height*9/10
        y:parent.height*1/10
        color: 'yellow'
        opacity: 1// Initial opacity set to 0


        Rectangle
        {
            width: parent.width*9/10
            height: parent.height*9/10

            id:group_edit
            color: "lightgray"
            radius: 10
            opacity: 1// Initial opacity set to 0
            anchors.centerIn: parent

            gradient: Gradient {
                GradientStop { position: 0; color: "#DDDDDD" }
                GradientStop { position: 0.5; color: "#BBBBBB" }
                GradientStop { position: 1; color: "#AAAAAA" }
            }

            Rectangle {
                width: parent.width - 6
                height: parent.height - 6
                color: "transparent"
                border.color: "#FFFFFF" // Highlight color
                border.width: 3 // Highlight width
                radius: parent.radius - (border.width / 2) // Match parent's corner radius
                anchors.centerIn: parent
            }





            //visible: false



            FileDialog {
                id: fileDialog
                //            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
                // onAccepted: image.source = selectedFile
                nameFilters: ["png file(*.png)"]
                onAccepted: {
                    labaly.text=manager.copy_from_qml_png(selectedFile)
                }
            }

            Label
            {
                id:lbl_name
                text: "نام گروه:"
                anchors.right:    parent.right
            }
            Rectangle
            {
                width: 200
                height: 20
                //            color: "yellow"
                border.width: 1
                border.color: "black"
                anchors.right: lbl_name.left

                TextInput
                {
                    id:input_name
                    anchors.fill:    parent
                }
            }


            Label
            {
                id:lbl_ax
                text: "عکس گروه"
                anchors.right:    parent.right
                y:100
            }
            Button
            {
                id :btn_select
                text: "انتخاب"
                anchors.right: lbl_ax.left
                y:100
                onClicked: {
                    fileDialog.open()
                }
            }

            Rectangle
            {
                width: 100
                height: 20
                anchors.right: btn_select.left
                y:100
                border.width: 1
                Label
                {
                    id:labaly
                    anchors.fill: parent
                }
            }

            Button
            {
                id :btn_sabt
                text: "ثبت"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                y:175
                onClicked: {
                    manager.db_delete_Groups(input_name.text,labaly.text)

                    manager.db_insert_to_group( input_name.text,labaly.text,input_radif.text)

                    input_dbbbb=manager.db_select_from_group()
                    number_of_grops=input_dbbbb.length
                    input_name.text=''
                    labaly.text=''
                    input_radif.text='0'
                }
            }

            Button
            {
                id :btn_hazf
                text: "حذف"
                anchors.bottom: parent.bottom
                y:175
                onClicked: {
                    manager.db_delete_Groups(input_name.text,labaly.text)
                    input_dbbbb=manager.db_select_from_group()
                    number_of_grops=input_dbbbb.length
                    input_name.text=''
                    labaly.text=''
                    input_radif.text='0'
                }
            }

            Image{
                id:imagek
                source: labaly.text
                width: 100
                height: 100
                anchors.centerIn: parent

            }

            Label
            {
                id:lbl_radif
                text: "ردیف:"
                anchors.right:    parent.right
                anchors.top: imagek.bottom
            }
            Rectangle
            {
                width: 200
                height: 20
                //            color: "yellow"
                border.width: 1
                border.color: "black"
                anchors.right: lbl_radif.left
                anchors.top: imagek.bottom

                TextInput
                {
                    id:input_radif
                    anchors.fill:    parent
                }
            }
        }
    }

    Rectangle
    {
        width:parent.width
        height:parent.height/10
        color: 'green'
        Button{
            anchors.left: parent.left
            text: "menu_asli"

            onClicked: {
                ss1.push('Menu_asli.qml')
            }
        }
    }



    Component.onCompleted:
    {


        input_dbbbb=manager.db_select_from_group()

        number_of_grops=input_dbbbb.length

        //        console.log(input_dbbbb)
        //        console.log(number_of_grops)

    }
}




