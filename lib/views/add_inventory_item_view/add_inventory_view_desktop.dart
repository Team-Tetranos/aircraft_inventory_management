
import 'dart:io';

import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/models/stock_history.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/stock_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/page_view.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/paginated_table_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class AddInventoryViewForDesktop extends StatefulWidget {
   AddInventoryViewForDesktop({Key? key}) : super(key: key);

  @override
  State<AddInventoryViewForDesktop> createState() => _AddInventoryViewForDesktopState();
}

class _AddInventoryViewForDesktopState extends State<AddInventoryViewForDesktop> {


  @override
  Widget build(BuildContext context) {
    return Consumer<StockViewModel>(
      builder: (context, ivm, _) {

        return Padding(
          padding: const EdgeInsets.only(left:50,top: 20),
          child: Container(
            height:810,
            width: MediaQuery.of(context).size.width * .716,
            child: PageViewWidget(
              firstWidget:  Container(
                  height: 747,
                width: MediaQuery.of(context).size.width * .716,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 40),
                        child: Container(
                          //height: 350,

                          width: 435,
                          //color: Colors.blue,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 26,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          border: Border.all(width: 1,color: Colors.black)
                                      ),
                                      child:  Icon(Icons.add,color: Colors.black,
                                      )),
                                  SizedBox(width: 14,),
                                  Text("Add New Stock",
                                    style: TextStyle(
                                       // fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter",
                                        color: Colors.black
                                    ),)
                                ],
                              ),

                              SizedBox(height: 40,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Card No",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.cardnumberforfirstpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 16),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                            enabledBorder: OutlineInputBorder(
                                             borderSide: BorderSide.none
                                            )
                                          ),

                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Date",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 13.0),
                                        height: 30.0, // Set the desired height for the TextField
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        child: TextField(

                                          controller: ivm.dateforfirstpageAddInventory,
                                          onTap: (){
                                            ivm.pickDate(context);
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Tap to pick date',

                                            border: InputBorder
                                                .none, // Remove the default TextField borderen

                                          ),

                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Stock/Parts No",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.stocknumberforfirstpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Unit',
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 250,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                          child: DropdownButton<String>(
                                            value: ivm.selectedUnit,
                                            underline: SizedBox.shrink(),


                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                            onChanged: (String?  value){
                                              ivm.updateSelectedUnit(value!);
                                            },
                                            items: ivm.units.map((e) => DropdownMenuItem<String>(
                                                value: e,
                                                child: Text(e)
                                            )).toList(),
                                          )
                                      ),
                                    ),
                                  ),

                                ],),

                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Aircraft",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                        child: TextField(
                                          enabled: false,
                                          controller: ivm.aircraftforfirstpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nomenclature",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.nomenclatureforfirstpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                            enabledBorder: OutlineInputBorder(
                                              borderSide:BorderSide.none
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),

                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Location",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.locationforfirstpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),

                              SizedBox(height: 20,),
                              /*Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Demand\nSchedule",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 13.0),
                                        height: 30.0, // Set the desired height for the TextField
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        child: TextField(
                                          controller: ivm.demandScheduleforfirstpageAddInventory,
                                          onTap: (){
                                            ivm.pickDateForDateSchedule(context);
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Tap to pick date',
                                            border: InputBorder
                                                .none, // Remove the default TextField border

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),*/
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black54
                                  ),
                                  shape: BoxShape.rectangle
                              ),
                              child: Stack(
                                children: [
                                  if(ivm.pickedImage!=null)
                                    Center(child: Image.file(File(ivm.pickedImage!.path)))
                                  else
                                    SizedBox.shrink(),

                                  if(ivm.pickedImage!=null)
                                    Center(child: Image.file(File(ivm.pickedImage!.path)))
                                  else
                                    SizedBox.shrink(),


                                  if (ivm.pickedImage==null)
                                    Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15
                                            ),
                                            child: Icon(Icons.camera_rounded),
                                          ),

                                        ],
                                      ),
                                    ),

                                ],
                              )
                            ),
                            SizedBox(height: 50,),
                            Row(
                              children: [
                                if(ivm.pickedImage!=null)
                                  GestureDetector(
                                    onTap: (){
                                      ivm.deleteImage();
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 20
                                        ),
                                        child: Text('Remove Image',style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      ),
                                    ),
                                  ),

                                SizedBox(width: 10,),
                                GestureDetector(
                                  onTap: (){
                                    ivm.pickImage();
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff1366D9),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20
                                      ),
                                      child: Text(ivm.pickedImage==null?"Browse Image":"Update Image",style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),



                                ),
                              ],
                            ),

                            SizedBox(height: 50,),
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width*0.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20
                                      ),
                                      child: Text('Cancel'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      ivm.create_stock_record(context);

                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF1e4837),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 20
                                        ),
                                        child: Text('Add Item',style: TextStyle(
                                            color: Colors.white,
                                          fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ]
                )
            ),
                secondWidget: SingleChildScrollView(
                  child: Container(
                    // height: 747,
                    width: MediaQuery.of(context).size.width * .716,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25,top: 20,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child: Row(
                                children: [
                                  IconButton(onPressed: (){
                                    ivm.pagecontroller.previousPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
                                  }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
                                  Text('Add Stock History',style: TextStyle(
                                    fontSize: 16
                                  ),),
                                ],
                              )),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: GestureDetector(
                                  onTap: (){
                                    ivm.create_stock_history(context);

                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF1e4837),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20
                                      ),
                                      child: Text('Upload Item',style: TextStyle(
                                          color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 50,),

                          Row(

                            children: [
                              Container(
                                  width: 350,

                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                fontFamily: "Inter"),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                              height: 30.0,
                                              width: 250,// Set the desired height for the TextField
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.all(Radius.circular(5))
                                              ),
                                              child: Center(
                                                child: TextField(
                                                  onTap: (){
                                                    ivm.pickDateForHistory(context);
                                                  },
                                                  controller: ivm.dateforsecondpageAddInventory,
                                                  decoration: InputDecoration(
                                                    contentPadding: EdgeInsets.only(left: 5,bottom: 16),
                                                    hintText: 'Tap to input date',
                                                    border: InputBorder
                                                        .none, // Remove the default TextField border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],),
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Quantity",
                                            style: TextStyle(color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                fontFamily: "Inter"),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                              height: 30.0,
                                              width: 250,// Set the desired height for the TextField
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                  borderRadius: BorderRadius.all(Radius.circular(5))

                                              ),
                                              child: Center(
                                                child: TextField(
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                  ],

                                                  controller: ivm.quantityforsecondpageAddInventory,
                                                  decoration: InputDecoration(

                                                    contentPadding: EdgeInsets.only(left: 5,bottom: 16),
                                                    hintText: '',
                                                    border: InputBorder
                                                        .none, // Remove the default TextField border

                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],),
                                    ],
                                  )
                              ),
                              SizedBox(width: 60,),
                              Container(
                                  width: 350,

                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Voucher No",
                                            style: TextStyle(color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                fontFamily: "Inter"),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                              height: 30.0,
                                              width: 250,// Set the desired height for the TextField
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                  borderRadius: BorderRadius.all(Radius.circular(5))

                                              ),
                                              child: Center(
                                                child: TextField(
                                                  controller: ivm.vouchernumberforsecondpageAddInventory,
                                                  decoration: InputDecoration(
                                                    contentPadding: EdgeInsets.only(left: 5,bottom: 16),
                                                    hintText: '',
                                                    border: InputBorder
                                                        .none, // Remove the default TextField border
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                        ],),
                                      SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(ivm.selectedHistoryStatus.toString(),
                                            style: TextStyle(color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                fontFamily: "Inter"),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Container(
                                              // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                              height: 30.0,
                                              width: 250,// Set the desired height for the TextField
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.all(Radius.circular(5))
                                              ),
                                              child: Center(
                                                child: DropdownButton<String>(
                                                  value: ivm.selectedHistoryStatus,
                                                  underline: SizedBox.shrink(),


                                                  style: TextStyle(
                                                      color: Colors.black
                                                  ),
                                                  onChanged: (String?  value){
                                                    ivm.updateSelectedHistoryStatus(value!);
                                                  },
                                                  items: ivm.historyStatus.map((e) => DropdownMenuItem<String>(
                                                    value: e,
                                                      child: Text(e)
                                                  )).toList(),
                                                )
                                              ),
                                            ),
                                          ),

                                        ],),
                                    ],
                                  )
                              ),
                              SizedBox(width: 60,),

                              //SizedBox(width: 60,),


                            ],
                          ),


                          ivm.selectedHistoryStatus==ivm.historyStatus[0]?Container(
                              width: 350,

                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Expiry Date",
                                        style: TextStyle(color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            fontFamily: "Inter"),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Container(
                                          // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                          height: 30.0,
                                          width: 250,// Set the desired height for the TextField
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.all(Radius.circular(5))
                                          ),
                                          child: Center(
                                            child: TextField(

                                              onTap: (){
                                                ivm.pickDateForHistoryForExpire(context);
                                              },
                                              controller: ivm.stockHistoryExpireDateforsecondpageAddInventory,
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(left: 5,bottom: 16),
                                                hintText: 'Tap to input date',
                                                border: InputBorder
                                                    .none, // Remove the default TextField border
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                    ],),

                                ],
                              )
                          ):SizedBox.shrink(),
                          SizedBox(height: 30,),
                          Container(
                            width: 760,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      ivm.createStockHistoryRecordBulk(context);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff1366D9),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 20
                                        ),
                                        child: Text('Save and continue adding',style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                          SizedBox(height: 70,),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Container(
                              //height: 500,

                              child: SingleChildScrollView(

                                child: Column(
                                  children: [
                                    ValueListenableBuilder(
                                      valueListenable: ivm.stockListHistoryBox.listenable(),
                                      builder: (context, box, _) {

                                        final stocks = box.values.where((element) => element.stock_record==ivm.updatedStockRecordForNextPag!.id).toList();
                                        return Theme(
                                          data: Theme.of(context).copyWith(
                                            cardTheme: CardTheme(
                                              elevation: 0, // remove shadow
                                              margin: const EdgeInsets.all(0), // reset margin
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(16), // Change radius
                                              ),
                                            ),
                                          ),
                                          child: PaginatedDataTable(

                                            columns: [
                                              // DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("SL No",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),  DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("Date",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),  DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("Quantity",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),  DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("Voucher No",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),  DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("Received",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),  DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("expenditure",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),
                                              DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("expiry date",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),
                                              DataColumn(label: SizedBox.shrink()),
                                              const DataColumn(label: Text("Uploaded",style: TextStyle(
                                                  fontFamily: "Inter",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  color: Color(0xFF797979)
                                              ),),),
                                            ],
                                            source: DataClass(data: stocks, onPressed: (index){

                                            }, lastPage: true),

                                            rowsPerPage: 50,
                                            columnSpacing: 18,


                                          ),
                                        );
                                      }
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],),
                    ),


                  ),
                ),

            )

          ),
        );

      }
    );
  }
}

