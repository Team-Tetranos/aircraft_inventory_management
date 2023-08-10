import 'package:aircraft_inventory_management/views/inventory_view/pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../utils/date_object_conversion.dart';
import '../../view_models/inventory_view_model.dart';

class InventoryViewForTablet extends StatefulWidget {
  const InventoryViewForTablet({Key? key}) : super(key: key);

  @override
  State<InventoryViewForTablet> createState() => _InventoryViewForTabletState();
}

class _InventoryViewForTabletState extends State<InventoryViewForTablet> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyProviderForInventoryView>(
        builder: (context,mp,_) {
          return Padding(
            padding: const EdgeInsets.only(left: 40),
            child: mp.isLoading?Center(
              child: SpinKitFadingCircle(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.red : Colors.green,
                    ),
                  );
                },
              ),
            ): Column(
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
                                child: Text("${mp.aircraftItemsForInventory.length}",
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
                    GestureDetector(
                      onTap: (){
                        mp.ChangingBooleanValue(1);

                      },
                      child: Container(
                        height: 65.51,
                        width: MediaQuery.of(context).size.width*.143,

                        decoration: BoxDecoration(
                            color: mp.InventoryItemIndex==1?Colors.white:Color(0xFFD8E4F5),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Active",
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
                                child: Text("",
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


                  ],
                ),
                Container(
                  height: 747,
                  //width: MediaQuery.of(context).size.width*1,
                  color: Colors.white,
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
                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 33.81,
                                  width: MediaQuery.of(context).size.width*.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFEDEDED)

                                  ),
                                  child: TextField(
                                    onChanged: (s){
                                     // mp.aircraftFiltering('part', s);
                                    },
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                        contentPadding: EdgeInsets.only(top: 3),
                                        hintText: "Part No",
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
                                    onChanged: (s){
                                      //mp.aircraftFiltering('card', s);
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
                                SizedBox(width: 30,),
                                Container(
                                  height: 33.81,
                                  width: MediaQuery.of(context).size.width*.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFEDEDED)

                                  ),
                                  child: TextField(
                                    onChanged: (s){
                                      //mp.aircraftFiltering('quantity', s);
                                    },
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
                                SizedBox(width: 20,),
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
                                SizedBox(width: 30,),
                                Container(
                                  height: 33.81,
                                  width: 33.81,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFE7E7),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(
                                    child: Icon(Icons.delete_outline_outlined,color: Color(0xFFE70707),size: 20,),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Container(
                                  height: 33.81,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFE5F0FF)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Export",style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter",
                                          color: Color(0xFF0268F4)
                                      ),),
                                      SizedBox(width: 2,),
                                      Icon(Icons.arrow_drop_down_sharp,
                                        size: 18,
                                        color: Color(0xFF1366D9),)
                                    ],
                                  ),
                                ),
                               // SizedBox(width: 33,)
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


                          //arrowHeadColor: Colors.blue,

                          columns:
                          [
                            DataColumn(label: Container(
                              height: 27.47,
                              width: MediaQuery.of(context).size.width*.018,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Color(0xFFD9D9D9)
                              ),),),
                            DataColumn(label: SizedBox.shrink()),
                            const DataColumn(label: Text("Part No",style: TextStyle(
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
                            DataColumn(label: Text("Card No",style: TextStyle(
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
                            DataColumn(label: Text("Received\nDi/Org",style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF797979)
                            ),),),
                            DataColumn(label: SizedBox.shrink()),
                            DataColumn(label: Text("Manufacturer",style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF797979)
                            ),),),
                            DataColumn(label: SizedBox.shrink()),
                            DataColumn(label: Text("Expire",style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF797979)
                            ),),),
                            DataColumn(label: SizedBox.shrink()),
                            DataColumn(label: Text("Expenditure",style: TextStyle(
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
                            DataColumn(label: SizedBox.shrink()),
                            DataColumn(label: Text("Created",style: TextStyle(
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
                            ),),)
                          ],
                          source: myData(mycontext: context, items: mp.duplicateaircraftItemsForInventory, onPressed: (index){

                            mp.onSelectRow(context, index);

                          }),
                          rowsPerPage: 10,
                          columnSpacing: 60,),
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
