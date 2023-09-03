import 'package:aircraft_inventory_management/res/endpoints.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:aircraft_inventory_management/view_models/datachart_details_view_model/datachart_details_DP_view_model.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../../utils/routes/route_names.dart';
import '../add_inventory_item_view/paginated_table_class.dart';

class DataChart_Details_DP_view extends StatefulWidget {
  const DataChart_Details_DP_view({Key? key}) : super(key: key);

  @override
  State<DataChart_Details_DP_view> createState() => _DataChart_Details_DP_viewState();
}

class _DataChart_Details_DP_viewState extends State<DataChart_Details_DP_view> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Datachart_Detalis_DP>(
        builder: (context, dcd, _) {
          return  Padding(
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
                                        Navigator.pop(context);
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
                                  width: 415,


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


                                            Text("Number",
                                              style: TextStyle(
                                                  fontSize: 20,
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


                                            Text("",
                                              style: TextStyle(
                                                  fontSize: 20,
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


                                            Text("",
                                              style: TextStyle(
                                                  fontSize: 20,
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


                                            Text("",
                                              style: TextStyle(
                                                  fontSize: 20,
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

                                            Text("",
                                              style: TextStyle(
                                                  fontSize: 20,
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

                                            Text('',
                                              style: TextStyle(
                                                  fontSize: 20,
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

                                            Text('',
                                              style: TextStyle(
                                                  fontSize: 20,
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
                                        Navigator.pushNamed(context, RouteNames.updateDP);



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
    );
  }
}
