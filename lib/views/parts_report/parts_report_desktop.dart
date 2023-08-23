import 'package:aircraft_inventory_management/view_models/report_view_model.dart';
import 'package:aircraft_inventory_management/views/parts_report/paginated_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../inventory_view/pagination_class.dart';

class PartsReportViewDesktop extends StatefulWidget {
  const PartsReportViewDesktop({Key? key}) : super(key: key);

  @override
  State<PartsReportViewDesktop> createState() => _PartsReportViewDesktopState();
}

class _PartsReportViewDesktopState extends State<PartsReportViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ReportViewModel>(
      builder: (context, rvm, _) {
        return  Column(
          crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                color: Colors.white,
                height: 65,
                width: MediaQuery.of(context).size.width*.74,
                child: Align(
                  alignment: Alignment.centerLeft,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text("Report",
                      style: TextStyle(
                        color: Color(0xFF797979),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter"
                      ),),
                    )),

              ),

             Padding(
               padding: EdgeInsets.only(left: 40),
               child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                        GestureDetector(
                          onTap: (){
                            //mp.ChangingBooleanValue(0);
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width*.718,

                            padding: EdgeInsets.symmetric(horizontal: 20),

                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Aircraft",
                                      style: TextStyle(
                                          color: Color(0xFF797979),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter"
                                      ),),
                                    SizedBox(width: 9,),
                                    Container(


                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),

                                        //color: Color(0xFF1366D9)

                                      ),
                                      child: Center(
                                          child: DropdownButton(
                                              value: rvm.selectedAircraft,
                                              items: rvm.aircrafts.map(
                                                      (e) => DropdownMenuItem(
                                                      value: e,
                                                      child: Text('${e.name??'ALL'}'))
                                              ).toList(),
                                              onChanged: (e){
                                                rvm.updateSelectedAircraft(e!);
                                              }
                                          )
                                      ),
                                    )

                                  ],
                                ),

                                SizedBox(width: 30,),



                                GestureDetector(
                                  onTap: (){

                                    rvm.generateReportDialog(context);
                                    //ivm.create_stock_history(context);

                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20
                                      ),
                                      child: Text('Export Report',style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),



                      Container(
                        height: 747,
                        width: MediaQuery.of(context).size.width*.718,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                            BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 28.53,),

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



                                //arrowHeadColor: Colors.blue,

                                columns:
                                [

                                  DataColumn(label: Text("SL No",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Part No",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Nomenclature",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("A/U",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Card No",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Quantity",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Received Dt",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Expiry Dt",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("Expenditure Qty",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),

                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label:  Text("Expenditure Dt",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),
                                  ),
                                  DataColumn(label: SizedBox.shrink()),
                                  DataColumn(label: Text("RMK",style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color(0xFF797979)
                                  ),),),
                                ],

                                rowsPerPage: 10,
                                showCheckboxColumn: false,
                                columnSpacing: 8, source: ReportTable(reports: rvm.duplicatereports, onPressed: (int ) {  }),),

                            )
                          ],),

                      ),
                    ],
                  ),
             ),

            ],
          );

      }
    );
  }
}
