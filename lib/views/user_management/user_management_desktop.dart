import 'package:aircraft_inventory_management/view_models/manage_store_view_model.dart';
import 'package:aircraft_inventory_management/views/manage_store_user_details_view/manage_store_user_details_view_desktop.dart';
import 'package:aircraft_inventory_management/views/user_management/user_management_pagination_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserManagementViewDesktop extends StatefulWidget {
  const UserManagementViewDesktop({Key? key}) : super(key: key);

  @override
  State<UserManagementViewDesktop> createState() => _UserManagementViewDesktopState();
}

class _UserManagementViewDesktopState extends State<UserManagementViewDesktop> {
  @override
  Widget build(BuildContext context) {

    return Consumer<ManageStoreViewModel>(
      builder: (context, msvm, _) {
        return Container(
          height: 900,
          width: MediaQuery.of(context).size.width*.75,
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: msvm.pageController,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 865,
                  width: MediaQuery.of(context).size.width*.775,

                  child: Column(
                    children: [

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
                                       /* Container(
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
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Inter",
                                                    color: Color(0xFF0268F4)
                                                ),),
                                              ),
                                              SizedBox(width: 2,),
                                              Flexible(

                                                child: Icon(Icons.arrow_drop_down_sharp,
                                                  size: 18,
                                                  color: Color(0xFF1366D9),),
                                              )
                                            ],
                                          ),
                                        ),*/
                                        SizedBox(width: 33,)
                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                            SizedBox(height: 31.7,),


                            Theme(
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
                              child: Scrollbar(
                                controller: msvm.scrollcontroller,
                                thickness: 10,

                                child: PaginatedDataTable(
                                  //arrowHeadColor: Colors.blue,
                                 controller: msvm.scrollcontroller,

                                  columns:
                                  [
                                    /*DataColumn(label: Container(
                                      height: 27.47,
                                      width: MediaQuery.of(context).size.width*.018,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          color: Color(0xFFD9D9D9)
                                      ),),),*/

                                    DataColumn(label: Text("Identity",style: TextStyle(
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
                                    DataColumn(label: Text("Verification Status",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),),
                                    DataColumn(label: Text("Permitted Aircrafts",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),),



                                  ]

                                  , source: User_management_Data(mycontext: context, profiles: msvm.profiles, onPressed: (index){

                                  msvm.onSelectUser(index);

                                }),
                                  rowsPerPage: 10,
                                  columnSpacing: 20,),
                              ),
                            )
                          ],),

                      ),
                    ],
                  ),

                ),
              ),

              ManageStoreUserDetailsDesktop()
            ],
          ),
        );
      }
    );
  }
}
