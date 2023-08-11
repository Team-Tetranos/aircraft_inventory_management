import 'package:aircraft_inventory_management/view_models/stock_history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/stock_history.dart';
import '../add_inventory_item_view/paginated_table_class.dart';

class StockHistoryViewDesktop extends StatefulWidget {
  const StockHistoryViewDesktop({Key? key}) : super(key: key);

  @override
  State<StockHistoryViewDesktop> createState() => _StockHistoryViewDesktopState();
}

class _StockHistoryViewDesktopState extends State<StockHistoryViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<StockHistoryViewModel>(
      builder: (context, ivm, _) {
        return SingleChildScrollView(
          child: Container(
            // height: 747,
            width: MediaQuery.of(context).size.width * .716,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 25,top: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Add Stock History'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: GestureDetector(
                          onTap: (){
                            ivm.create_stock_history(context);

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
                              child: Text('Upload Item',style: TextStyle(
                                  color: Colors.white
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
                                      ),
                                      child: Center(
                                        child: TextField(
                                          onTap: (){
                                            ivm.pickDateForHistory(context);
                                          },
                                          controller: ivm.dateforsecondpageAddInventory,
                                          decoration: InputDecoration(
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
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.quantityforsecondpageAddInventory,
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
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.vouchernumberforsecondpageAddInventory,
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
                                      ),
                                      child: Center(
                                          child: DropdownButton<String>(
                                            value: ivm.selectedHistoryStatus,


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

                      //SizedBox(width: 60,),


                    ],
                  ),

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
                            StreamBuilder<BoxEvent>(
                                stream: ivm.stockListHistoryBox.watch(),
                                builder: (context, snapshot) {

                                  final stockHistories = ivm.stockListHistoryBox.get(ivm.updatedStockRecordForNextPag!.id, defaultValue: <StockHistory>[])??<StockHistory>[];
                                  return PaginatedDataTable(
                                    columns: [
                                      // DataColumn(label: SizedBox.shrink()),
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
                                      const DataColumn(label: Text("Uploaded",style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF797979)
                                      ),),),
                                    ],
                                    source: DataClass(data: stockHistories),
                                    rowsPerPage: 50,
                                    columnSpacing: 60,


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
        );
      }
    );
  }
}
