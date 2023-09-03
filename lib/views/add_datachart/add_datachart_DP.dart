import 'package:aircraft_inventory_management/view_models/add_data_chart/add_datachart_DP_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';

import '../../models/category.dart';
import '../../view_models/stock_view_model.dart';
import '../../view_models/view_model_for_base_view/base_view_model.dart';

class Add_DataChart_DP extends StatefulWidget {
  const Add_DataChart_DP({Key? key}) : super(key: key);

  @override
  State<Add_DataChart_DP> createState() => _Add_DataChart_DPState();
}

class _Add_DataChart_DPState extends State<Add_DataChart_DP> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DemandDatabaseViewModel>(
      builder: (context,advm,_) {
        return Scaffold(
          body: Container(
              height: 747,
              width: MediaQuery.of(context).size.width * .716,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 40),
                      child: Container(

                        width: 500,

                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(


                                    child: Container(
                                        height: 26,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                            border: Border.all(width: 1,color: Colors.black)
                                        ),
                                        child:  Icon(Icons.arrow_back,color: Colors.black,
                                        )),
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                  ),
                                  SizedBox(width: 14,),
                                  Text("Add New Record",
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
                                    "Demand Number",
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
                                          controller: advm.demandnumberDP,

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
                                    " Demand Date",
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
                                          controller: advm.demanddateDP,


                                          onTap: (){
                                            advm.pickDate(context);

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
                                          controller: advm.nomenclatureDP,

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
                                  Text('A/U',
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
                                            value:advm.selectedUnit,
                                            underline: SizedBox.shrink(),


                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                            onChanged: (String?  value){
                                              advm.selectedUnitForDP(value!);

                                            },
                                            items: advm.DPunits.map((e) => DropdownMenuItem<String>(
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
                                    "Demand Quantity",
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
                                          controller: advm.demandquantityDP,

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
                                    "Received",
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
                                          controller: advm.receivedDP,

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
                                    "RMK",
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
                                          controller: advm.rmkDP,

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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [


                          SizedBox(height: 50,),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width*0.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
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
                                ),
                                GestureDetector(
                                  onTap: ()async{
                                    await advm.add_data_record(context);
                                      print("lol");


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
        );
      }
    );
  }
}
