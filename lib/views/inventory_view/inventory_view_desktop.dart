
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/inventory_view/pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/inventory_view_model.dart';

//import 'inventory_widget/pagination_class.dart';

class InventoryViewForDesktop extends StatefulWidget {
  const InventoryViewForDesktop({Key? key}) : super(key: key);

  @override
  State<InventoryViewForDesktop> createState() => _InventoryViewForDesktopState();
}

class _InventoryViewForDesktopState extends State<InventoryViewForDesktop> {
  ScrollController controller=ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    Provider.of<MyProviderForInventoryView>(context, listen: false).updateAircraftItemsForInventory(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final DataTableSource _data=myData(mycontext: context);
    return Consumer<MyProviderForInventoryView>(
      builder: (context,mp,_) {
        return Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Column(
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
                              child: Text("150",
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
                              child: Text("150",
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
                      mp.ChangingBooleanValue(2);

                    },
                    child: Container(
                      height: 65.51,
                      width: MediaQuery.of(context).size.width*.143,

                      decoration: BoxDecoration(
                          color: mp.InventoryItemIndex==2?Colors.white:Color(0xFFD8E4F5),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sold Item",
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
                              child: Text("150",
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
                  )
                ],
              ),
              Container(
                height: 747,
                width: MediaQuery.of(context).size.width*.716,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 28.53,),
                    Row(
                      children: [
                        SizedBox(width: 12,),
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
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                            decoration: BoxDecoration(
                                color: Color(0xFF1366D9),
                                borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("${mp.acft!.name}",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.white
                                  ),)
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 15,),

                        Expanded(
                          child: Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 33.81,
                                  width: MediaQuery.of(context).size.width*.122,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFEDEDED)

                                  ),
                                  child: TextField(
                                    onChanged: (s){
                                      mp.aircraftFiltering('part', s);
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
                                Container(
                                  height: 33.81,
                                  width: MediaQuery.of(context).size.width*.122,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFEDEDED)

                                  ),
                                  child: TextField(
                                    onChanged: (s){
                                      mp.aircraftFiltering('card', s);
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
                                  width: MediaQuery.of(context).size.width*.122,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      color: Color(0xFFEDEDED)

                                  ),
                                  child: TextField(
                                    onChanged: (s){
                                      mp.aircraftFiltering('quantity', s);
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
                                //SizedBox(width: 20,),
                                Container(
                                  height: 33.81,
                                  width: MediaQuery.of(context).size.width*.029,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFE7E7),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(
                                    child: Icon(Icons.delete_outline_outlined,color: Color(0xFFE70707),size: 20,),
                                  ),
                                ),
                               // SizedBox(width: 10,),
                                Container(
                                      height: 33.81,
                                      width: MediaQuery.of(context).size.width*.0569,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          color: Color(0xFFE5F0FF)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Flexible(
                                            child: Text("Export",style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Inter",
                                                color: Color(0xFF0268F4)
                                            ),),
                                          ),
                                          SizedBox(width: 5,),
                                          Flexible(
                                            child: Icon(Icons.arrow_drop_down_sharp,
                                              size: 18,
                                              color: Color(0xFF1366D9),),
                                          )
                                        ],
                                      ),
                                    ),
                                SizedBox(width: 10,)



                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 31.7,),


                    Scrollbar(
                      thickness: 10,

                      controller: controller,
                      child: PaginatedDataTable(
                        //arrowHeadColor: Colors.blue,
                        controller: controller,


                        columns:
                        [
                          DataColumn(label: Container(
                            height: 27.47,
                            width: MediaQuery.of(context).size.width*.018,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                color: Color(0xFFD9D9D9)
                            ),),),
                          DataColumn(label: Text("Part No",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Nomenclature",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("A/U",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Card No",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Quantity",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Received\nDi/Org",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Manufacturer",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Expire",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Expenditure",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("RMK",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Created",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),),
                          DataColumn(label: Text("Status",style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF797979)
                          ),),)
                        ]

                        , source: myData(mycontext: context, items: mp.duplicateaircraftItemsForInventory),

                        rowsPerPage: 10,
                        columnSpacing: 60,

                      ),
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
