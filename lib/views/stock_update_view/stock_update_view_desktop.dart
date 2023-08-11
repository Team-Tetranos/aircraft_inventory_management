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
        return Container(
            height: 747,
            width: MediaQuery.of(context).size.width * .716,
            color: Colors.white,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 40),
                    child: Container(
                      height: 350,

                      width: 435,
                      //color: Colors.blue,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
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
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      //initialValue: svm.stockRecord.card_no,
                                      controller: svm.cardnumberforfirstpageAddInventory,
                                      decoration: InputDecoration(
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
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                                    height: 30.0, // Set the desired height for the TextField
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
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
                                "Stock No",
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
                                    child: TextFormField(
                                      //initialValue: svm.stockRecord.stock_no,
                                      controller: svm.stocknumberforfirstpageAddInventory,

                                      decoration: InputDecoration(
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
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      enabled: false,
                                      initialValue: svm.stockRecord.aircraft!.name,
                                      //controller: svm.aircraftforfirstpageAddInventory,
                                      decoration: InputDecoration(
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
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      controller: svm.nomenclatureforfirstpageAddInventory,
                                      decoration: InputDecoration(
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
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15
                                ),
                                child: Icon(Icons.camera_rounded),
                              ),
                              Text("Drag Image here"),
                              Text("or"),
                              Text("Browse Image",style: TextStyle(
                                  color: Color(0xff448DF2)
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              GestureDetector(
                                onTap: (){
                                  //ivm.create_stock_record(context);

                                  svm.updateStockRecord(context);

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
                                    child: Text('Update Record',style: TextStyle(
                                        color: Colors.white
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
        );
      }
    );
  }
}
