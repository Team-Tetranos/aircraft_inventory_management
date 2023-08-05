import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view_tablet.dart';
import 'package:aircraft_inventory_management/views/single-item_details/single_item_details_tablet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../res/constants.dart';
import 'base_view_widget.dart';

class Base_View_tablet extends StatefulWidget {
  const Base_View_tablet({Key? key}) : super(key: key);

  @override
  State<Base_View_tablet> createState() => _Base_View_tabletState();
}

class _Base_View_tabletState extends State<Base_View_tablet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          drawer: Drawer(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
            ),
            child: Column(
              children: [
                Container(
                  height: 204,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF7EA6C9),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 19,),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(height: 16,),
                        Text("James Deni",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: "Inter"
                          ),),
                        SizedBox(height: 10,),
                        Text("james8800479@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: "Inter"
                          ),)
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFCFE7FD),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),
                        MyBaseViewContainer(text: "DashBoard",
                            icon: Icons.home,
                            iconcolor: Color(0xFF797979),
                            textcolor: Color(0xFF797979),
                            containercolor: Colors.transparent),
                        SizedBox(height: 20,),
                        MyBaseViewContainer(text: "Settings",
                            icon: Icons.settings,
                            iconcolor: Color(0xFF797979),
                            textcolor: Color(0xFF797979),
                            containercolor: Colors.transparent),
                        SizedBox(height: 20,),
                        MyBaseViewContainer(text: "Manage Store",
                            icon: Icons.storefront,
                            iconcolor: Color(0xFF797979),
                            textcolor: Color(0xFF797979),
                            containercolor: Colors.transparent),
                        SizedBox(height: 20,),
                        MyBaseViewContainer(text: "Log Out",
                            icon: Icons.logout,
                            iconcolor: Color(0xFF797979),
                            textcolor: Color(0xFF797979),
                            containercolor: Colors.transparent),
                        SizedBox(height: 20,),
                        MyBaseViewContainer(text: "Help",
                            icon: Icons.question_mark,
                            iconcolor: Color(0xFF797979),
                            textcolor: Color(0xFF797979),
                            containercolor: Colors.transparent)

                      ],
                    ),
                  ),
                ))

              ],
            ),

          ),

          body:  Container(
            width: AppConstants().tablet_width,

            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 44,right: 51),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Builder(
                            builder: (context) {
                              return GestureDetector(
                                  onTap: (){
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: Icon(Icons.menu,size: 46,color: Colors.black,));
                            }
                        ),
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            height: 94,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 36,
                                  width: MediaQuery.of(context).size.width*.0277,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF569DFF),
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                  ),
                                  child: Center(
                                    child: FaIcon(FontAwesomeIcons.bell,
                                      color: Colors.white,
                                      size: 20,),
                                  ),
                                ),
                                SizedBox(width: 40,),
                                Container(
                                  height: 44,
                                  //width: MediaQuery.of(context).size.width*.111,

                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(width: 1,color: Color(0xFFECECEC)),
                                      borderRadius: BorderRadius.circular(35)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4,bottom: 5),
                                        child: CircleAvatar(
                                          radius: 35,
                                          backgroundColor: Colors.black,

                                        ),
                                      ),


                                      Padding(
                                        padding: const EdgeInsets.only(right: 7),
                                        child: Text("james dane ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Inter",
                                              color: Color(0xFF212121)
                                          ),),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                 Single_Item_Details_Tablet_View()




                  ],
                ),
              ),
            ),
          )


      ),
    );
  }
}
