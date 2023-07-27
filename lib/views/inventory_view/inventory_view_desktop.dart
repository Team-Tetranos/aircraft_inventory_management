import 'package:aircraft_inventory_management/view_models/blank_view_model.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view_widget.dart';
import 'package:aircraft_inventory_management/views/inventory_view/pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

//import 'inventory_widget/pagination_class.dart';

class MyInventoryView extends StatefulWidget {
  const MyInventoryView({Key? key}) : super(key: key);

  @override
  State<MyInventoryView> createState() => _MyInventoryViewState();
}

class _MyInventoryViewState extends State<MyInventoryView> {

  @override
  Widget build(BuildContext context) {
    final DataTableSource _data=myData(mycontext: context);
    return Consumer<MyProviderForInventoryView>(
      builder: (context,mp,_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      SizedBox(width: 43,),
                      Container(
                        height: 47.55,
                        width: MediaQuery.of(context).size.width*.084,
                        decoration: BoxDecoration(
                            color: Color(0xFF1366D9),
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,size: 16,),
                            SizedBox(width: 10,),
                            Text("Add",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.white
                              ),)
                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 33.81,
                                width: MediaQuery.of(context).size.width*.122,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xFFEDEDED)

                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,color: Color(0xFF858D9D),),
                                      contentPadding: EdgeInsets.only(top: 3),
                                      hintText: "Search",
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
                              SizedBox(width: 20,),
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
                                    Text("Export",style: TextStyle(
                                        fontSize: 16,
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
                              SizedBox(width: 33,)
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                  SizedBox(height: 31.7,),


                  PaginatedDataTable(
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
                      DataColumn(label: Text("Image",style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF797979)
                      ),),),
                      DataColumn(label: Text("Name",style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF797979)
                      ),),),
                      DataColumn(label: Text("Buying Price ",style: TextStyle(
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
                      DataColumn(label: Text("Delivered",style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF797979)
                      ),),),
                      DataColumn(label: Text("Remaining",style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF797979)
                      ),),),
                      DataColumn(label: Text("Expire Date",style: TextStyle(
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

                    , source: _data,
                    rowsPerPage: 10,
                    columnSpacing: 60,)
                ],),

            ),
          ],
        );
      }
    );
  }
}
