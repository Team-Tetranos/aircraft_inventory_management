import 'package:aircraft_inventory_management/views/user_management/user_management_pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../inventory_view/pagination_class.dart';

class User_Management_View extends StatefulWidget {
  const User_Management_View({Key? key}) : super(key: key);

  @override
  State<User_Management_View> createState() => _User_Management_ViewState();
}

class _User_Management_ViewState extends State<User_Management_View> {
  @override
  Widget build(BuildContext context) {
    final DataTableSource _data=User_management_Data(mycontext: context);
    return Container(
      height: 865,
      width: MediaQuery.of(context).size.width*.775,

      child: Column(
        children: [
          Container(
            height: 62,
            color: Colors.white,
            width: MediaQuery.of(context).size.width*.775,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                   FaIcon(FontAwesomeIcons.bars,color: Color(0xFF696969),
                      ),
                  SizedBox(width: 14,),
                  Text("New Item",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: "Inter",
                        color: Color(0xFF696969)
                    ),)
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Container(
            height: 770,
            width: MediaQuery.of(context).size.width*.745,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 28.53,),
                Row(
                  children: [

                    SizedBox(width: 43,),


                    Text("User Management",
                    style: TextStyle(
                      color: Color(0xFF444444),
                      fontFamily: "Inter",
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),

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

                    DataColumn(label: Text("Name",style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF797979)
                    ),),),

                    DataColumn(label: Text("User Role ",style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF797979)
                    ),),),
                    DataColumn(label: Text("Action",style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF797979)
                    ),),),



                  ]

                  , source: _data,
                  rowsPerPage: 10,
                  columnSpacing: 200,)
              ],),

          ),
        ],
      ),

    );
  }
}
