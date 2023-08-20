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
        return Padding(
          padding: const EdgeInsets.only(left: 40, top: 40),
          child:  SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 40,),
                Row(

                  children: [
                    GestureDetector(
                      onTap: (){
                        //mp.ChangingBooleanValue(0);
                      },
                      child: Container(

                        padding: EdgeInsets.symmetric(horizontal: 20),

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                        ),
                        child: Row(
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
                      ),
                    ),
                    SizedBox(width: 10,),


                  ],
                ),

                Container(
                  //height: 747,
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

                          rowsPerPage: 100,
                          showCheckboxColumn: false,
                          columnSpacing: 8, source: ReportTable(reports: rvm.duplicatereports, onPressed: (index){
                          rvm.onSelectRow(context, index);
                        }),),

                      )
                    ],),

                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
