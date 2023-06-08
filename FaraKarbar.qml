import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick.Dialogs

Item
{

    property real group_size: 20/100  //(GUI)  size of group

    property int highlightedIndex: 0  // for highlite index in group

    property int number_of_grops:-1
    property var group_db_read:[]

    property int number_of_product: -1
    property var product_db_read: []

    //+++++++++++++++++++++++++++++++++++++++++++++++ group_rect ++++++++++++++++++++++++++++++++++++++++++++++++++++
    Rectangle
    {
        id:group_rect_id
        width: parent.width*group_size
        height:( parent.height*9)/10
        y:parent.height*1/10

        Flickable
        {
            anchors.fill:parent
            contentHeight: group_colomn_id.implicitHeight

            Column
            {
                id : group_colomn_id
                anchors.fill: parent

                Repeater
                {
                    model: number_of_grops+1

                    QrpBtn
                    {

                        width:group_colomn_id.width

                        text:
                        {
                            if (index === number_of_grops)
                            {
                                "add" ;
                            }
                            else
                            {
                                group_db_read[index][0];
                            }
                        }
                        src:
                        {
                            if (index === number_of_grops)
                            {
                                ".img/add_btn.png" ;
                            }
                            else
                            {
                                group_db_read[index][1];
                            }
                        }
                        clr:
                        {
                            if(index === highlightedIndex )
                                "yellow" ;
                            else
                                "blue";
                        }
                        onClicked:
                        {
                            highlightedIndex=index

                            if (index === number_of_grops) // add group
                            {
                                group_edit_dialog_id.open()

                                input_radif.text=index


                                group_edit_input_name_id.text=''
                                group_edit_img_lbl_id.text=''
                            }
                            else
                            {
                                input_radif.text=index
                                product_db_read=manager.db_select_product(text)
                                console.log(product_db_read)
                                number_of_product=product_db_read.length



                                group_edit_input_name_id.text=text
                                group_edit_img_lbl_id.text=src
                            }
                        }
                    }
                }
            }
            ScrollBar.vertical: ScrollBar{}
        }
    }

    //+++++++++++++++++++++++++++++++++++++++++++++++ product_rect ++++++++++++++++++++++++++++++++++++++++++++++++++++
    Rectangle
    {
        anchors.left: group_rect_id.right
        width: parent.width*(1-group_size)
        height: parent.height*9/10
        y:parent.height*1/10
        color: 'beige'

        Flickable
        {
            anchors.fill:parent
            contentHeight: product_grid_id.implicitHeight//+400

            Grid
            {
                id : product_grid_id
                anchors.fill: parent
                columns: 3
                //spacing: 10


                Repeater
                {
                    model: number_of_product+1
                    ProductBtn
                    {
                        width:parent.width/3

                        text:
                            if (index === number_of_product)
                            {
                                "add" ;
                            }
                            else
                            {
                                product_db_read[index][0];
                            }

                        src:
                            if (index === number_of_product)
                            {
                                ".img/add_btn.png" ;
                            }
                            else
                            {
                                product_db_read[index][2];
                            }

                        //height: group_rect_id.height
                        price:(product_db_read[index][1]).toString();
                        //                    text: "pizza"
                        //                    opacity:0.8
                        //                    src:"images/pizza.png"

                        onClicked:
                        {
                            if (index === number_of_product) //if add product button clicked
                            {
                                product_img_lbl_id.text=""
                                product_edit_price_input_id.text=""
                                product_edit_name_input_id.text=""
                                product_edit_dialog_id.open()

                            }
                            else
                             {
                                product_img_lbl_id.text=src
                                product_edit_price_input_id.text=price
                                product_edit_name_input_id.text=text
                                product_edit_dialog_id.open()

                            }
                        }
                    }
                }
            }
            ScrollBar.vertical: ScrollBar{}
        }
    }

    //+++++++++++++++++++++++++++++++++++++++++++++++ control_rect ++++++++++++++++++++++++++++++++++++++++++++++++++++
    Rectangle
    {
        width:parent.width
        height:parent.height/10
        color: 'green'
        Row
        {
            spacing: 20
            Button{
                width: 80
                //            anchors.left: parent.left
                text: "menu_asli"

                onClicked: {
                    ss1.push('Menu_asli.qml')
                }
            }

            Button{
                width: 80

                //            anchors.left: parent.left
                text: "ویرایش گروه"

                onClicked:
                {
                    group_edit_dialog_id.open()

                    //                    if(group_edit_dialog_id.visible)
                    //                        group_edit_dialog_id.visible=0;
                    //                    else
                    //                        group_edit_dialog_id.visible=1;
                }
            }
        }
    }

    //++++++++++++++++++++++++++++++++++++++++++++++group_edit+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    Dialog
    {
        id:group_edit_dialog_id
        width: parent.width*9/10
        height: parent.height*9/10
        anchors.centerIn: parent
        title: "change group INFO"
        modal: true
        // standardButtons: Dialog.Accepted

        //contentItem: Rectangle
        Rectangle
        {
            anchors.fill: parent
            color: "yellow"
            radius: 10

            Button
            {
                text: "خروج"
                onClicked: group_edit_dialog_id.close()
            }

            Label
            {
                id:group_edit_group_lbl_name_id
                text: "نام گروه:"
                anchors.right:    parent.right
            }


            FileDialog
            {
                id: group_edit_fileDialog_id
                //            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
                // onAccepted: image.source = selectedFile
                nameFilters: ["png file(*.png)"]
                onAccepted:
                {
                    group_edit_img_lbl_id.text=manager.copy_from_qml_png(selectedFile)
                }
            }
            Rectangle
            {
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                anchors.right: group_edit_group_lbl_name_id.left
                TextInput
                {
                    id:group_edit_input_name_id
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
                onClicked:
                {
                    group_edit_fileDialog_id.open()
                }
            }

            Rectangle
            {
                width: 100
                height: 20
                anchors.right: btn_select.left
                y:100
                border.width: 1
                color: "blue"
                Label
                {
                    id:group_edit_img_lbl_id
                    anchors.fill: parent
                }
            }

            Button
            {
                text: "ثبت"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                y:175
                onClicked: {
                    manager.db_delete_Groups(group_edit_input_name_id.text,group_edit_img_lbl_id.text)

                    manager.db_insert_to_group( group_edit_input_name_id.text,group_edit_img_lbl_id.text,input_radif.text)

                    group_db_read=manager.db_select_from_group()
                    number_of_grops=group_db_read.length
                    group_edit_input_name_id.text=''
                    group_edit_img_lbl_id.text=''
                    input_radif.text='0'
                }
            }

            Button
            {
                text: "حذف"
                anchors.bottom: parent.bottom
                y:175
                onClicked: {
                    manager.db_delete_Groups(group_edit_input_name_id.text,group_edit_img_lbl_id.text)
                    group_db_read=manager.db_select_from_group()
                    number_of_grops=group_db_read.length
                    group_edit_input_name_id.text=''
                    group_edit_img_lbl_id.text=''
                    input_radif.text='0'
                }
            }

            Image{
                id:imagek
                source: group_edit_img_lbl_id.text
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


    //++++++++++++++++++++++++++++++++++++++++++++ pruduct edit +++++++++++++++++++++++++++++++++++++++++++++++++
    //++++++++++++++++++++++++++++++++++++++++++++ pruduct edit +++++++++++++++++++++++++++++++++++++++++++++++++
    Dialog
    {

        id:product_edit_dialog_id
        width: parent.width*9/10
        height: parent.height*9/10
        anchors.centerIn: parent


        title: "change product INFO"
        modal: true
        // standardButtons: Dialog.Accepted

        //contentItem: Rectangle
        Rectangle
        {
            anchors.fill: parent
            color: "lightblue"
            radius: 10
            Button
            {
                text: "خروج"
                onClicked: product_edit_dialog_id.close()

            }

            Label
            {
                id:product_name_lbl_id
                text: "نام محصول:"
                anchors.right:    parent.right
            }
            Rectangle
            {
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                anchors.right: product_name_lbl_id.left

                TextInput
                {
                    id:product_edit_name_input_id
                    anchors.fill:    parent
                }
            }
            Label
            {
                id:product_price_lbl_id
                text: "قیمت محصول:"
                anchors.right:    parent.right
                y:50
            }
            Rectangle
            {
                width: 200
                height: 20
                border.width: 1
                border.color: "black"
                anchors.right: product_price_lbl_id.left
                y:50
                TextInput
                {
                    id:product_edit_price_input_id
                    anchors.fill:    parent
                }
            }
            FileDialog
            {
                id: product_fileDialog_id
                //            currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
                // onAccepted: image.source = selectedFile
                nameFilters: ["png file(*.png)"]
                onAccepted:
                {
                    product_img_lbl_id.text=manager.copy_from_qml_png(selectedFile)
                }
            }
            CheckBox
            {
                id:product_edit_check_id
                y:75
                anchors.right:    parent.right
                text: 'موجود'
                checked: true






            }
            Label
            {
                id:product_lbl_ax
                text: "عکس محصول"
                anchors.right:    parent.right
                y:100
            }
            Button
            {
                id :product_btn_select
                text: "انتخاب"
                anchors.right: product_lbl_ax.left
                y:100
                onClicked: {
                    product_fileDialog_id.open()
                }
            }

            Rectangle
            {
                width: 100
                height: 20
                anchors.right: product_btn_select.left
                y:100
                border.width: 1
                Label
                {
                    id:product_img_lbl_id
                    anchors.fill: parent
                }
            }
            Image{
                source: product_img_lbl_id.text
                width: 100
                height: 100
                anchors.centerIn: parent
            }

            Button
            {
                text: "ثبت"
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                y:175
                onClicked: {
                    //            manager.db_delete_Groups(product_edit_name_input_id.text,labaly.text)

                    manager.db_insert_to_product( product_edit_name_input_id.text,product_img_lbl_id.text,product_edit_price_input_id.text,manager.db_select_group_id(group_edit_input_name_id.text),Number(product_edit_check_id.checked))
                    //def db_insert_to_product(self,name,img,pricee,group_id,Available)

                    product_db_read=manager.db_select_product(group_edit_input_name_id.text)
                    number_of_product=product_db_read.length

                    //                group_db_read=manager.db_select_from_group()
                    //                number_of_grops=group_db_read.length
                    //                product_edit_name_input_id.text=''
                    //                labaly.text=''
                    //                input_radif.text='0'
                }
            }

            Button
            {
                text: "حذف"
                anchors.bottom: parent.bottom
                onClicked:
                {
                manager.db_delete_product(product_edit_name_input_id.text,product_img_lbl_id.text,product_edit_price_input_id.text)
                }
                //            onClicked: {
                //                manager.db_delete_Groups(product_edit_name_input_id.text,labaly.text)
                //                group_db_read=manager.db_select_from_group()
                //                number_of_grops=group_db_read.length
                //                product_edit_name_input_id.text=''
                //                labaly.text=''
                //                input_radif.text='0'
                //            }
            }
        }
    }


    //++++++++++++++++++++++++++++++++++++++++++++ Component.onCompleted +++++++++++++++++++++++++++++++++++++++++++++++++
    Component.onCompleted:
    {
        group_db_read=manager.db_select_from_group()
        number_of_grops=group_db_read.length
        product_db_read=manager.db_select_product(group_db_read[0][0])
        number_of_product=product_db_read.length

        group_edit_input_name_id.text=group_db_read[0][0]
        group_edit_img_lbl_id.text=group_db_read[0][1]

    }
}




