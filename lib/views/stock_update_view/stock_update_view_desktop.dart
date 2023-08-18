import 'dart:io';

import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/inventory_view_model.dart';

class StockUpdateViewDesktop extends StatefulWidget {
  const StockUpdateViewDesktop({Key? key}) : super(key: key);

  @override
  State<StockUpdateViewDesktop> createState() => _StockUpdateViewDesktopState();
}

class _StockUpdateViewDesktopState extends State<StockUpdateViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SingleItemViewModel>(
      builder: (context, svm, _) {
        return Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Container(
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
                      padding: const EdgeInsets.only(left: 30,top: 40),
                      child: Container(
                        height: 550,

                        width: 435,


                        child: Column(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap:(){
                                    Provider.of<MyProviderForInventoryView>(context, listen: false).previousPage();

                                  },
                                  child: Container(
                                      height: 26,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          border: Border.all(width: 1,color: Color(0xFF696969))
                                      ),
                                      child:  Icon(Icons.arrow_back,color: Colors.black,
                                      )),
                                ),
                                SizedBox(width: 14,),
                                Text("Update Stock",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      fontFamily: "Inter",
                                      color: Color(0xFF696969)
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
                                      borderRadius: BorderRadius.all(Radius.circular(7))
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        //initialValue: svm.stockRecord.card_no,
                                        controller: svm.cardnumberforfirstpageAddInventory,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 6,bottom: 16),
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
                                        borderRadius: BorderRadius.all(Radius.circular(7))
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0, // Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.all(Radius.circular(7))
                                      ),
                                      child: TextFormField(
                                        controller: svm.dateforfirstpageAddInventory,
                                        //initialValue: svm.udate,
                                        onTap: (){
                                          //ivm.pickDate(context);
                                          svm.pickDate(context);
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

                            ],),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Stock/Part No",
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
                                        borderRadius: BorderRadius.all(Radius.circular(7))
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        //initialValue: svm.stockRecord.stock_no,
                                        controller: svm.stocknumberforfirstpageAddInventory,

                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 6,bottom: 16),
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
                                    borderRadius: BorderRadius.all(Radius.circular(7))
                                  ),
                                  child: Center(
                                      child: DropdownButton<String>(
                                        value: svm.selectedUnit,
                                        underline: SizedBox.shrink(),


                                        style: TextStyle(
                                            color: Colors.black
                                        ),
                                        onChanged: (String?  value){
                                          svm.updateSelectedUnit(value!);
                                        },
                                        items: svm.units.map((e) => DropdownMenuItem<String>(
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
                                        borderRadius: BorderRadius.all(Radius.circular(7))
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        enabled: false,
                                        initialValue: svm.stockRecord.aircraft!.name,
                                        //controller: svm.aircraftforfirstpageAddInventory,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 6,bottom: 16),
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
                                        borderRadius: BorderRadius.all(Radius.circular(7))
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: svm.nomenclatureforfirstpageAddInventory,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(left: 6,bottom: 16),
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
                                  ),
                                  child: Center(
                                    child: TextField(
                                      controller: svm.locationforfirstpageAddInventory,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 6,bottom: 15),
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
                         /* Row(
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
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 13.0),
                                    height: 30.0, // Set the desired height for the TextField
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: TextField(
                                      controller: svm.demandScheduleforfirstpageAddInventory,
                                      onTap: (){
                                        svm.pickDateForDateSchedule(context);
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
                                if(svm.pickedImage!=null)
                                  Center(child: Image.file(File(svm.pickedImage!.path)))
                                else if(svm.stockRecord.image==null||svm.stockRecord.image!.isEmpty)
                                  SizedBox.shrink()
                                else
                                  Center(child: Image.network(svm.stockRecord.image??'')),

                                if(svm.pickedImage!=null)
                                  Center(child: Image.file(File(svm.pickedImage!.path)))
                                else
                                  SizedBox.shrink(),


                                if (svm.pickedImage==null&&svm.stockRecord.image==null)
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
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            if(svm.pickedImage!=null)
                              GestureDetector(
                                onTap: (){
                                  svm.deleteImage();
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
                                svm.pickImage();
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
                                  child: Text(svm.pickedImage==null?"Browse Image":"Update Image",style: TextStyle(
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

                                InkWell(

                                  onTap: (){
                                    //ivm.create_stock_record(context);

                                    svm.updateStockRecord(context);

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
                                      child: Text('Update Record',style: TextStyle(
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
        );
      }
    );
  }
}
