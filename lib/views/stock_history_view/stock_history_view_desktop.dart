import 'package:aircraft_inventory_management/view_models/stock_history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/stock_history.dart';
import '../../view_models/inventory_view_model.dart';
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
          child: Padding(
            padding: const EdgeInsets.only(left:60,top: 30,right: 10),
            child: Container(
              // height: 747,
              width: MediaQuery.of(context).size.width * .716,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25,top: 20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Text("Add Stock History",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  fontFamily: "Inter",
                                  color: Colors.black
                              ),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: GestureDetector(
                            onTap: (){
                              ivm.create_stock_history(context);

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
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
                                  child: Text('Upload Item',style: TextStyle(
                                      color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
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
                                          borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        child: Center(
                                          child: TextField(
                                            onTap: (){
                                              ivm.pickDateForHistory(context);
                                            },
                                            controller: ivm.dateforsecondpageAddInventory,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(left: 6,bottom: 16),
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
                                            borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        child: Center(
                                          child: TextField(
                                            inputFormatters: <TextInputFormatter>[
                                              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                            ],
                                            controller: ivm.quantityforsecondpageAddInventory,
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
                                          borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        child: Center(
                                          child: TextField(
                                            controller: ivm.vouchernumberforsecondpageAddInventory,
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
                                          borderRadius: BorderRadius.all(Radius.circular(7))
                                        ),
                                        child: Center(
                                            child: DropdownButton<String>(
                                              value: ivm.selectedHistoryStatus,
                                              underline: SizedBox.shrink(),


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

                    ivm.selectedHistoryStatus==ivm.historyStatus[0]?Container(
                        width: 350,

                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Expiry Date",
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
                                      child: TextField(
                                        onTap: (){
                                          ivm.pickDateForHistoryForExpire(context);
                                        },
                                        controller: ivm.stockHistoryExpireDateforsecondpageAddInventory,
                                        decoration: InputDecoration(
                                          hintText: 'Tap to input date',
                                          border: InputBorder
                                              .none, // Remove the default TextField border
                                          contentPadding: EdgeInsets.only(left: 6,bottom: 16)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],),

                          ],
                        )
                    ):SizedBox.shrink(),


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
                              ValueListenableBuilder(
                                  valueListenable: ivm.stockListHistoryBox.listenable(),
                                  builder: (context, box, _){
                                    final stocks = box.values.where((element) => element.stock_record==ivm.updatedStockRecordForNextPag!.id).toList();
                                    return Theme(
                                      data: Theme.of(context).copyWith(
                                        cardTheme: CardTheme(
                                          color: Colors.white,

                                          elevation: 0, // remove shadow
                                          margin: const EdgeInsets.all(0), // reset margin
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16), // Change radius
                                          ),
                                        ),
                                      ),
                                      child: PaginatedDataTable(
                                        showCheckboxColumn: false,
                                        columns: [
                                          // DataColumn(label: SizedBox.shrink()),
                                          const DataColumn(label: Text("SL No",style: TextStyle(
                                              fontFamily: "Inter",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xFF797979)
                                          ),),),  DataColumn(label: SizedBox.shrink()),
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
                                          const DataColumn(label: Text("expiry date",style: TextStyle(
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
                                        source: DataClass(data: stocks??[], onPressed: (index){
                                          ivm.setupSelectedStockHistory(context,stocks[index]);
                                        }, lastPage: true),
                                        rowsPerPage: 50,
                                        columnSpacing: 20,


                                      ),
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
          ),
        );
      }
    );
  }
}
