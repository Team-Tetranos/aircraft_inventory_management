import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view.dart';
import 'package:aircraft_inventory_management/views/inventory_view/add_inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/product_overview_view/product_overview.dart';
import 'package:aircraft_inventory_management/views/user_management/user_management.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../view_models/blank_view_model.dart';
import '../add_category_view/add_category_view.dart';
import '../dashboard_2/dashboard_2.dart';
import 'base_view_widget.dart';

class MybaseViewDesktop extends StatefulWidget {
  const MybaseViewDesktop({Key? key}) : super(key: key);

  @override
  State<MybaseViewDesktop> createState() => _MybaseViewDesktopState();
}

class _MybaseViewDesktopState extends State<MybaseViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<BaseViewModel>(
            builder: (context,mp,_) {
              return Scaffold(
                backgroundColor: Color(0xFFD9D9D9),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 94,
                            width: MediaQuery.of(context).size.width*.225,
                            color: Colors.white,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: .5),
                            child: Container(
                              height: 94,
                              width: MediaQuery.of(context).size.width*.774,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  SizedBox(width: 40,),

                                  Container(
                                      height: 44,
                                      width: MediaQuery.of(context).size.width*.277,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFECECEC).withOpacity(.42),
                                          border: Border.all(width: 1,color: Color(0xFFECECEC)),
                                          borderRadius: BorderRadius.circular(35)
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none
                                            ),
                                            contentPadding: EdgeInsets.only(top: 6),
                                            prefixIcon: Icon(Icons.search,
                                              color: Color(0xFF858D9D),
                                              size: 20,),
                                            hintText: "Search product,supplier,order"
                                        ),

                                      )
                                  ),
                                  Expanded(
                                    child: Container(
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
                                              child: Icon(Icons.message_outlined,
                                                color: Colors.white,
                                                size: 20,),
                                            ),
                                          ),
                                          SizedBox(width: 40,),
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
                                                color: Color(0xFFECECEC).withOpacity(.42),
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
                                          SizedBox(width: 44,)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 865,
                            width: MediaQuery.of(context).size.width*.225,

                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF000000).withOpacity(.05),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: Offset(0, 10), // changes position of shadow
                                  ),]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 62),
                                GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'dashboard');

                                  },
                                    child: MyBaseViewContainer(text: "Dashboard",
                                        icon: Icons.home,
                                        textcolor: mp.baseviewPage=='dashboard'?Color(0xFF0B6CF3):Color(0xFF797979),
                                        iconcolor: mp.baseviewPage=='dashboard'?Color(0xFF0B6CF3):Color(0xFF797979))),

                                SizedBox(height: 40,),
                                Visibility(
                                  visible: mp.pickedAircraft!=null,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                          onTap: (){
                                            mp.changingOptions(context,'add_item');

                                          },
                                          child: MyBaseViewContainer(text: "Add Item",
                                              icon: Icons.add_shopping_cart_outlined,
                                              textcolor: mp.baseviewPage=='add_item'?Color(0xFF0B6CF3):Color(0xFF797979),
                                              iconcolor: mp.baseviewPage=='add_item'?Color(0xFF0B6CF3):Color(0xFF797979))),

                                      SizedBox(height: 40,),
                                      GestureDetector(
                                          onTap: (){
                                            mp.changingOptions(context,'inventory');

                                          },
                                          child: MyBaseViewContainer(text: "inventory",
                                              icon: Icons.add_shopping_cart_outlined,
                                              textcolor: mp.baseviewPage=='inventory'?Color(0xFF0B6CF3):Color(0xFF797979),
                                              iconcolor: mp.baseviewPage=='inventory'?Color(0xFF0B6CF3):Color(0xFF797979))),

                                      SizedBox(height: 40,),

                                      GestureDetector(
                                          onTap: (){
                                            mp.changingOptions(context,'product_overview');
                                          },
                                          child: MyBaseViewContainer(text: "Product Overview",
                                              icon: Icons.event_note_sharp,
                                              textcolor: mp.baseviewPage=='product_overview'?Color(0xFF0B6CF3):Color(0xFF797979),
                                              iconcolor: mp.baseviewPage=='product_overview'?Color(0xFF0B6CF3):Color(0xFF797979))),


                                      SizedBox(height: 40,),
                                    ],
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'manage_store');
                                  },
                                    child: MyBaseViewContainer(text: "Manage Store",
                                        icon: Icons.storefront,
                                        textcolor: mp.baseviewPage=='manage_store'?Color(0xFF0B6CF3):Color(0xFF797979),
                                        iconcolor: mp.baseviewPage=='manage_store'?Color(0xFF0B6CF3):Color(0xFF797979))),

                                SizedBox(height: 40,),

                                /*GestureDetector(
                                    onTap: (){
                                      mp.changingOptions(4);
                                    },
                                    child: MyBaseViewContainer(text: "Suppliers",
                                        icon: Icons.account_circle_outlined,
                                        textcolor: mp.baseviewIndex==4?Color(0xFF0B6CF3):Color(0xFF797979),
                                        iconcolor: mp.baseviewIndex==4?Color(0xFF0B6CF3):Color(0xFF797979))),

                                SizedBox(height: 40,),*/

                                GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'settings');
                                  },
                                    child: MyBaseViewContainer(text: "Settings",
                                        icon: Icons.settings,
                                        textcolor: mp.baseviewPage=='settings'?Color(0xFF0B6CF3):Color(0xFF797979),
                                        iconcolor: mp.baseviewPage=='settings'?Color(0xFF0B6CF3):Color(0xFF797979))),

                                SizedBox(height: 40,),

                                GestureDetector(
                                  onTap: ()async{
                                    await mp.logout(context);
                                  },
                                    child: MyBaseViewContainer(text: "Log Out",
                                        icon: Icons.logout,
                                        textcolor: mp.baseviewPage=='log_out'?Color(0xFF0B6CF3):Color(0xFF797979),
                                        iconcolor: mp.baseviewPage=='log_out'?Color(0xFF0B6CF3):Color(0xFF797979))),

                                SizedBox(height: 40,),

                                GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'help');
                                  },
                                    child: MyBaseViewContainer(text: "help",
                                        icon: Icons.question_mark,
                                        textcolor: mp.baseviewPage=='help'?Color(0xFF0B6CF3):Color(0xFF797979),
                                        iconcolor: mp.baseviewPage=='help'?Color(0xFF0B6CF3):Color(0xFF797979))),
                              ],
                            ),
                          ),

                          //SizedBox(width: 40,),

                          mp.baseviewPage=='dashboard'?MyDashBoardView():mp.baseviewPage=='inventory'?MyInventoryView():mp.baseviewPage=='add_category'?AddCategoryView():mp.baseviewPage=='add_item'?AddInventoryView():mp.baseviewPage=='product_overview'?Product_Overview_View():mp.baseviewPage=='manage_store'?User_Management_View():MyDashBoardView()
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
        )



    );
  }
}
