
import 'package:aircraft_inventory_management/view_models/demand_database_view_model.dart';
import 'package:aircraft_inventory_management/views/demand_database_view/datachart_details_view.dart';
import 'package:aircraft_inventory_management/views/demand_database_view/paginated_table.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/routes/route_names.dart';

class DataBaseChartView extends StatefulWidget {
  const DataBaseChartView({Key? key}) : super(key: key);

  @override

  State<DataBaseChartView> createState() => _DataBaseChartViewState();
}

class _DataBaseChartViewState extends State<DataBaseChartView> {
  @override
  void initState() {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp){
      Provider.of<DemandDatabaseViewModel>(context, listen: false).fetch_all_data(context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Consumer<DemandDatabaseViewModel>(
      builder: (context,dvm,_) {

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
                                          controller: dvm.searchnumber,
                                          onChanged: (s){
                                            dvm.demandtype=="DP"? dvm.dataFilteringDP():dvm.dataFilteringLP();

                                          },

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
                                          controller: dvm.searchnomenclature,
                                          onChanged: (s){
                                            dvm.demandtype=="DP"? dvm.dataFilteringDP():dvm.dataFilteringLP();

                                          },

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
                                    Navigator.popAndPushNamed(context, RouteNames.adddatachart);

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
                                  DataColumn(label: Center(
                                    child: Text("Serial Number",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),
                                  DataColumn(label: SizedBox.shrink()),

                                  DataColumn(label: Center(
                                    child: Text("Demand Number",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Center(
                                    child: Text("Demand Date",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Center(
                                    child: Text("Nomenclature",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Center(
                                    child: Text("A/U",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Center(
                                    child: Text("Demand Quantity",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Center(
                                    child: Text("Received",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("RMK",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),
                                  ),

                                ],
                                source: TableDataBase(/*onpressed: (index,String id){
                                 // Navigator.popAndPushNamed(context, RouteNames.databasedetails);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  DataChartDetailsview( dataid: id,)),
                                  );

                                }*/items: dvm.demandtype=="DP"?dvm.duplicatedemandlistforDP:dvm.duplicatedemandlistforLP,context: context),

                                rowsPerPage: 50,
                                columnSpacing: 22,),
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
    );
  }
}
