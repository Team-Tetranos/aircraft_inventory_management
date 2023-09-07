import 'package:aircraft_inventory_management/res/endpoints.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';

import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../../utils/routes/route_names.dart';
import '../../view_models/demand_database_view_model.dart';
import '../add_inventory_item_view/paginated_table_class.dart';

class DataChartDetailsview extends StatefulWidget {
  String? dataid;
   DataChartDetailsview({Key? key,required this.dataid}) : super(key: key);

  @override
  State<DataChartDetailsview> createState() => _DataChartDetailsviewState();
}

class _DataChartDetailsviewState extends State<DataChartDetailsview> {
  @override
  void initState() {
    Provider.of<DemandDatabaseViewModel>(context, listen: false).fetch_data_by_ID(context,widget.dataid.toString());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<DemandDatabaseViewModel>(
          builder: (context, dvm, _) {
            return   Padding(
                padding: const EdgeInsets.only(top: 30,left: 20,bottom: 30),
                child: Container(
                  height: 765,
                  width: MediaQuery.of(context).size.width*.729,

                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10
                      ))

                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Column(

                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:20),
                                      child: Row(

                                        children: [
                                          IconButton(onPressed: (){
                                            Navigator.popAndPushNamed(context, RouteNames.datachart);
                                          }, icon: Icon(Icons.arrow_back,color: Colors.black,)),

                                          Text("Data Record Details",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                fontFamily: "Inter",
                                                color: Colors.black
                                            ),)
                                        ],
                                      ),
                                    ),


                                    SizedBox(height: 50,),
                                    Text("Primery Details",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Inter",
                                          color: Color(0xFF383E49)
                                      ),),
                                    SizedBox(height: 18,),

                                    Container(
                                      width: 550,



                                      child: Column(
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                              children: [
                                                Text("Demand Number",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),


                                                Text(dvm.demandmodel.demandNo==null?'':dvm.demandmodel.demandNo.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),


                                          ),
                                          SizedBox(height: 32,),
                                          Container(


                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Demand Date",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),


                                                Text(dvm.demandmodel.date==null?'':dvm.demandmodel.date.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 32,),
                                          Container(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Nomenclature",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),


                                                Text(dvm.demandmodel.description==null?'':dvm.demandmodel.description.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 32,),
                                          Container(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Unit",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),


                                                Text(dvm.demandmodel.unit==null?'':dvm.demandmodel.unit.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 32,),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Demand Quantity",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),

                                                Text(dvm.demandmodel.demandQuantity==null?'':dvm.demandmodel.demandQuantity.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),
                                          ),

                                          SizedBox(height: 32,),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Received",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),

                                                Text(dvm.demandmodel.received==null?'':dvm.demandmodel.received.toString(),
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 32,),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("RMK",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),

                                                Text(dvm.demandmodel.rmk??'',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: "Inter",
                                                      color: Color(0xFF383E49)
                                                  ),),
                                              ],
                                            ),
                                          ),
                                          /*Container(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("Demand Schedule",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                              fontFamily: "Inter",
                                                              color: Color(0xFF383E49)
                                                          ),),

                                                        Text(svm.stockRecord.demand_schedule==null?'':stringToDate(svm.stockRecord.demand_schedule),
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                              fontFamily: "Inter",
                                                              color: Color(0xFF383E49)
                                                          ),),
                                                      ],
                                                    ),
                                                  ),*/

                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(width: 200,),

                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Column(


                                  children: [
                                    SizedBox(height: 52,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,

                                      children: [
                                        GestureDetector(
                                          onTap:(){
                                            dvm.deleteDataRecord(context, dvm.demandmodel.id.toString());
                                           /*// Navigator.popAndPushNamed(context, RouteNames.datachart);
                                            Navigator.pushReplacementNamed(context, RouteNames.datachart);*/

                                            print("delete");

                                          },
                                          child: Container(

                                            height: 50,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                                border: Border.all(width: 1,color: Color(0xFFD0D5DD))
                                            ),
                                            child: Center(
                                              child: Text("Delete",
                                                style: TextStyle(
                                                    fontFamily: "Inter",
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 14,
                                                    color: Colors.white
                                                ),),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 40,),
                                        GestureDetector(
                                          onTap: (){
                                            Navigator.popAndPushNamed(context, RouteNames.updatedatabase);


                                          },
                                          child: Container(

                                            height: 50,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(7)),
                                                border: Border.all(width: 1,color: Color(0xFFD0D5DD))
                                            ),
                                            child:Padding(
                                              padding: const EdgeInsets.only(left: 10,right: 10),
                                              child: Row(
                                                children: [
                                                  FaIcon(FontAwesomeIcons.pen,color: Color(0xFF5D6679),size: 13,),
                                                  SizedBox(width: 23,),
                                                  Text("Edit",
                                                    style: TextStyle(
                                                        fontFamily: "Inter",
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16,
                                                        color: Color(0xFF5D6679)
                                                    ),),
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              );






          }
      ),
    );
  }
}
