
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/inventory_view/pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../view_models/inventory_view_model.dart';

//import 'inventory_widget/pagination_class.dart';

class InventoryViewForDesktop extends StatefulWidget {
  const InventoryViewForDesktop({Key? key}) : super(key: key);

  @override
  State<InventoryViewForDesktop> createState() => _InventoryViewForDesktopState();
}

class _InventoryViewForDesktopState extends State<InventoryViewForDesktop> {


  @override
  Widget build(BuildContext context) {
    //final DataTableSource _data=myData(mycontext: context);

    return Consumer<MyProviderForInventoryView>(
      builder: (context,mp,_) {
        return Padding(
          padding: const EdgeInsets.only(left: 40),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(

                children: [
                  GestureDetector(
                    onTap: (){
                      mp.ChangingBooleanValue(0);
                    },
                    child: Container(
                      height: 65.51,
                      width: MediaQuery.of(context).size.width*.143,

                      decoration: BoxDecoration(
                          color: mp.InventoryItemIndex==0?Colors.white:Color(0xFFD8E4F5),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("All Item",
                            style: TextStyle(
                                color: Color(0xFF797979),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter"
                            ),),
                          SizedBox(width: 9,),
                          Container(
                            height: 21.13,
                            width: MediaQuery.of(context).size.width*.0277,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Color(0xFF1366D9)

                            ),
                            child: Center(
                              child: Text("${mp.duplicatestockRecords.length}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter"
                                ),),
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
                    Row(
                      children: [
                        SizedBox(width: 43,),
                        GestureDetector(
                          onTap: (){

                            try{
                             // Provider.of<BaseViewModel>(context, listen: false).changingOptions(10);
                            }catch(e){
                              print(e);

                            }

                          },
                          child: Container(
                            height: 47.55,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            decoration: const BoxDecoration(
                                color: Color(0xFF1366D9),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("${mp.acft!.name}",
                                  style: const TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 15,),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 33.81,
                                width: MediaQuery.of(context).size.width*.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xFFEDEDED)

                                ),
                                child: TextField(
                                  controller: mp.nomenclatureFilteringController,
                                  onChanged: (s){
                                    //mp.aircraftFiltering('quantity', s);
                                    mp.stockRecordFiltering();
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
                              Container(
                                height: 33.81,
                                width: MediaQuery.of(context).size.width*.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xFFEDEDED)

                                ),
                                child: TextField(
                                  controller: mp.cardNoFilteringController,
                                  onChanged: (s){
                                    mp.stockRecordFiltering();

                                  },
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                      contentPadding: EdgeInsets.only(top: 3),
                                      hintText: "Card No",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF858D9D)
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none
                                      )
                                  ),


                                ),
                              ),
                              Container(
                                height: 33.81,
                                width: MediaQuery.of(context).size.width*.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xFFEDEDED)

                                ),
                                child: TextField(
                                  controller: mp.stockNoFilteringController,
                                  onChanged: (s){
                                    //mp.aircraftFiltering('card', s);
                                    mp.stockRecordFiltering();
                                  },
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                      contentPadding: EdgeInsets.only(top: 3),
                                      hintText: "Stock/Part No",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF858D9D)
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none
                                      )
                                  ),


                                ),
                              ),
                              Container(
                                height: 33.81,
                                width: MediaQuery.of(context).size.width*.06,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xFFEDEDED)

                                ),
                                child: TextField(
                                  controller: mp.quantityFilteringController,
                                  onChanged: (s){
                                    //mp.aircraftFiltering('quantity', s);
                                    mp.stockRecordFiltering();
                                  },
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                  ],
                                  decoration: InputDecoration(

                                      prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                      contentPadding: EdgeInsets.only(top: 3),
                                      hintText: "Quantity",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF858D9D)
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none
                                      )
                                  ),


                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  mp.selectExpireDateRange(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFEDEDED)

                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Expire in '),
                                          if(mp.pickedRange!=null)
                                            Text('${dateToString(mp.pickedRange!.start)}-${dateToString(mp.pickedRange!.end)}')

                                        ],
                                      ),
                                      if(mp.pickedRange!=null)
                                        GestureDetector(

                                            child: Icon(Icons.cancel_outlined),
                                          onTap: (){
                                              mp.clearDateRange();
                                          },
                                        )
                                      else
                                        Icon(Icons.calendar_month)
                                    ],
                                  ),

                                ),
                              ),

                              //SizedBox(width: 20,),

                             // SizedBox(width: 20,)
                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 31.7,),


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
                              DataColumn(label: Text("SL No",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                             DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Card No",style: TextStyle(
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
                              DataColumn(label: Text("Stock/Part No",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Quantity",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Latest Expire",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),
                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Status",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                              DataColumn(label: SizedBox.shrink()),
                              DataColumn(label: Text("Upload Status",style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF797979)
                              ),),),

                            ],
                            source: myData(mycontext: context, items: mp.duplicatestockRecords, onPressed: (index){
                              mp.onSelectRow(context, index);
                            }, stockHistoryBox: mp.hiveManager.getStockHistoryBox()),
                            rowsPerPage: 10,
                            columnSpacing: 20,),


                    )
                  ],),

              ),
            ],
          ),
        );
      }
    );
  }
}
