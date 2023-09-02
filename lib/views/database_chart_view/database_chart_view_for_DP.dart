import 'package:aircraft_inventory_management/views/database_chart_view/paginated_table_for_DP.dart';
import 'package:flutter/material.dart';

import '../../utils/routes/route_names.dart';

class DataBase_Chart_View_For_DP extends StatefulWidget {
  const DataBase_Chart_View_For_DP({Key? key}) : super(key: key);

  @override

  State<DataBase_Chart_View_For_DP> createState() => _DataBase_Chart_View_For_DPState();
}

class _DataBase_Chart_View_For_DPState extends State<DataBase_Chart_View_For_DP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar:  AppBar(
          leading:
              IconButton(onPressed: () {
                Navigator.pop(context);
              },
                icon: Icon(Icons.arrow_back,color: Colors.black,),
              ),


          title:  Text("Database Chart",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500

            ),),
        ),

      body:  Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(


                children: [
                  SizedBox(height: 40,),

                  Container(


                    width: MediaQuery.of(context).size.width*.9,
                    color: Colors.white,
                    child: Column(

                      children: [
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    height: 33.81,
                                    width: MediaQuery.of(context).size.width*.1,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        color: Color(0xFFEDEDED)

                                    ),
                                    child: TextField(

                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                          contentPadding: EdgeInsets.only(top: 3),
                                          hintText: "Demand Number",
                                          hintStyle: TextStyle(
                                              color: Color(0xFF858D9D)
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none
                                          )
                                      ),


                                    ),
                                  ),
                                  SizedBox(width: 30,),
                                  Container(
                                    height: 33.81,
                                    width: MediaQuery.of(context).size.width*.1,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        color: Color(0xFFEDEDED)

                                    ),
                                    child: TextField(

                                      decoration: InputDecoration(
                                          prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                          contentPadding: EdgeInsets.only(top: 3),
                                          hintText: "Nomenclature",
                                          hintStyle: TextStyle(
                                              color: Color(0xFF858D9D)
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none
                                          )
                                      ),


                                    ),
                                  ),
                                ],),
                              ),
                              SizedBox(width: 30,),
                              ElevatedButton(onPressed: (){
                                Navigator.pushNamed(context, RouteNames.adddatachartDP);

                              },
                                  child: Text("Add DataRecord")),
                            ],
                          ),
                        ),
                        SizedBox(height: 70,),
                        Theme(
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
                            showCheckboxColumn: false,



                            //arrowHeadColor: Colors.blue,

                            columns:
                            [
                              DataColumn(label: Text("Serial Number",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                              DataColumn(label: SizedBox.shrink()),

                              DataColumn(label: Text("Demand Number",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Demand Date",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Nomenclature",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("A/U",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Demand Quantity",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Received",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("RMK",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                            ],
                            source: Table_DataBase_For_DP(onpressed: (index){
                              Navigator.pushNamed(context, RouteNames.updateDP);
                            }),
                            rowsPerPage: 50,
                            columnSpacing: 42,),
                        ),



                      ],
                    ),

                  ),
                ],
              ),
        ),
      ),



    );
  }
}
