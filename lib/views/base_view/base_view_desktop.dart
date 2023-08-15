import 'dart:math';

import 'package:aircraft_inventory_management/models/stock_record_report.dart';
import 'package:aircraft_inventory_management/utils/notification_string_create.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/add_inventory_view.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view_desktop_2.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/add_inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/parts_report/parts_report.dart';
import 'package:aircraft_inventory_management/views/product_overview_view/product_overview.dart';
import 'package:aircraft_inventory_management/views/settings/profile_settings.dart';
import 'package:aircraft_inventory_management/views/single-item_details/single_item_details_desktop.dart';
import 'package:aircraft_inventory_management/views/user_management/user_management.dart';
import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/stock_record.dart';
import '../../view_models/blank_view_model.dart';
import '../add_category_view/add_category_view.dart';
import '../dashboard_2/dashboard_2.dart';
import '../help_and_support/help_support_desktop.dart';
import '../inventory_view/inventory_view.dart';
import '../settings/profile_settings_desktop.dart';
import '../single-item_details/single_item_details.dart';
import '../user_management_second_page/user_management_second_page_desktop.dart';
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
                backgroundColor: const Color(0xFFD9D9D9),
                body: SingleChildScrollView(

                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height:94 ,
                            width: MediaQuery.of(context).size.width*.225,
                            color: const Color(0xFF052169),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image_files/Bangladesh Army Aviation.png"),
                                  //fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Container(
                              height: 94,
                              width: MediaQuery.of(context).size.width*.774,
                              color: Color(0xFF052169),
                              child: Row(
                                children: [
                                  SizedBox(width: 40,),

                                  mp.baseviewPage=='dashboard'?Container(
                                      height: 44,
                                      width: MediaQuery.of(context).size.width*.277,
                                      decoration: BoxDecoration(
                                          color:Colors.white,
                                          border: Border.all(width: 1,color: Color(0xFFECECEC)),
                                          borderRadius: BorderRadius.circular(35)
                                      ),
                                      child: TextField(
                                        onChanged: (s){
                                          mp.filterAircraft(context,s);
                                        },
                                        decoration: const InputDecoration(

                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none
                                            ),
                                            contentPadding: EdgeInsets.only(top: 6),
                                            prefixIcon: Icon(Icons.search,
                                              color: Color(0xFF858D9D),
                                              size: 20,),
                                            hintText: "Search aircraft"
                                        ),

                                      )
                                  ):SizedBox.shrink(),
                                  Expanded(
                                    child: Container(
                                      height: 94,

                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [


                                          PopupMenuButton(

                                              itemBuilder: (context){
                                                return [
                                                  ...List.generate(mp.notifications.length, (index) {

                                                    StockRecord notificaiton = mp.notifications[index];
                                                    return PopupMenuItem(
                                                      onTap: (){
                                                        mp.processNotificationTap(context, notificaiton);
                                                      },
                                                        child: Text(notificationString(notificaiton), style: TextStyle(
                                                          fontWeight: FontWeight.bold,

                                                        ),));
                                                  })

                                                ];
                                              },
                                            child:Container(
                                              height: 36,
                                              width: MediaQuery.of(context).size.width*.0277,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                              ),
                                              child: Center(
                                                child: FaIcon(FontAwesomeIcons.bell,
                                                  color: mp.notifications.length>0?Colors.red: Colors.white,
                                                  size: 20,),
                                              ),
                                            ),

                                            /*Container(
                                              height: 36,
                                              width: MediaQuery.of(context).size.width*.0277,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xFF569DFF),
                                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                              ),
                                              child: Center(
                                                child: FaIcon(FontAwesomeIcons.bell,
                                                  color: Colors.white,
                                                  size: 20,),
                                              ),
                                            ),*/

                                              tooltip: 'Show Notification',
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
                                                  padding: EdgeInsets.only(top: 4,bottom: 5),
                                                  child: CircleAvatar(
                                                    radius: 35,
                                                    backgroundColor: Colors.black,

                                                  ),
                                                ),


                                                Padding(
                                                  padding: EdgeInsets.only(right: 7),
                                                  child: Text("${mp.user.email}",
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
                                          SizedBox(width: 20,)
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 1000,
                            width: MediaQuery.of(context).size.width*.225,

                            decoration: BoxDecoration(
                                color: Color(0xFF052169),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF000000).withOpacity(.05),
                                    spreadRadius: 0,
                                    blurRadius: 30,
                                    offset: Offset(0, 10), // changes position of shadow
                                  ),]
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 62),
                                GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'dashboard');

                                  },
                                    child: MyBaseViewContainer(text: "Dashboard",
                                        containercolor: mp.baseviewPage=="dashboard"?Color(0xFFECECEC):Colors.transparent,
                                        icon: Icons.home,
                                        textcolor: mp.baseviewPage=='dashboard'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                        iconcolor: mp.baseviewPage=='dashboard'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),

                                SizedBox(height: 40,),
                                Visibility(
                                  visible: mp.pickedAircraft!=null,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                          onTap: (){
                                            mp.changingOptions(context,'add_item');

                                          },
                                          child: MyBaseViewContainer(text: "Add Stock",
                                              containercolor: mp.baseviewPage=="add_item"?Color(0xFFECECEC):Colors.transparent,
                                              icon: Icons.add_shopping_cart_outlined,
                                              textcolor: mp.baseviewPage=='add_item'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                              iconcolor: mp.baseviewPage=='add_item'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),

                                      SizedBox(height: 40,),
                                      GestureDetector(
                                          onTap: (){
                                            mp.changingOptions(context,'inventory');

                                          },
                                          child: MyBaseViewContainer(text: "Inventory",
                                              containercolor: mp.baseviewPage=="inventory"?Color(0xFFECECEC):Colors.transparent,
                                              icon: Icons.add_shopping_cart_outlined,
                                              textcolor: mp.baseviewPage=='inventory'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                              iconcolor: mp.baseviewPage=='inventory'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),


                                      SizedBox(height: 40,),

                                      Visibility(
                                        visible: mp.pickedAircraftItem!=null,
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                                onTap: (){
                                                  mp.changingOptions(context,'item_details');

                                                },
                                                child: MyBaseViewContainer(text: "Item Details",
                                                    containercolor: mp.baseviewPage=="item_details"?Color(0xFFECECEC):Colors.transparent,
                                                    icon: Icons.add_shopping_cart_outlined,
                                                    textcolor: mp.baseviewPage=='item_details'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                                    iconcolor: mp.baseviewPage=='item_details'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),
                                            SizedBox(height: 40,),
                                          ],
                                        ),
                                      ),






                                      SizedBox(height: 40,),
                                    ],
                                  ),
                                ),

                                mp.user.is_admin==true?Column(
                                  children: [
                                    GestureDetector(
                                        onTap: (){
                                          mp.changingOptions(context,'manage_store');
                                        },
                                        child: MyBaseViewContainer(text: "Manage Store",
                                            containercolor: mp.baseviewPage=="manage_store"?Color(0xFFECECEC):Colors.transparent,
                                            icon: Icons.storefront,
                                            textcolor: mp.baseviewPage=='manage_store'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                            iconcolor: mp.baseviewPage=='manage_store'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),

                                    SizedBox(height: 40,),
                                  ],
                                ):SizedBox.shrink(),

                                GestureDetector(
                                    onTap: (){
                                      mp.changingOptions(context,'product_overview');
                                    },
                                    child: MyBaseViewContainer(text: "Report",
                                        containercolor: mp.baseviewPage=="product_overview"?Colors.white:Colors.transparent,
                                        icon: Icons.event_note_sharp,
                                        textcolor: mp.baseviewPage=='product_overview'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                        iconcolor: mp.baseviewPage=='product_overview'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),



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
                                        containercolor: mp.baseviewPage=="settings"?Color(0xFFECECEC):Colors.transparent,
                                        icon: Icons.settings,
                                        textcolor: mp.baseviewPage=='settings'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                        iconcolor: mp.baseviewPage=='settings'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),

                                SizedBox(height: 40,),

                                GestureDetector(
                                  onTap: ()async{
                                    await mp.logout(context);
                                  },
                                    child: MyBaseViewContainer(text: "Log Out",
                                        containercolor: mp.baseviewPage=="log_out"?Color(0xFFECECEC):Colors.transparent,
                                        icon: Icons.logout,
                                        textcolor: mp.baseviewPage=='log_out'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                        iconcolor: mp.baseviewPage=='log_out'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),

                                SizedBox(height: 40,),

                                GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'help');
                                  },
                                    child: MyBaseViewContainer(text: "help",
                                        containercolor: mp.baseviewPage=="help"?Color(0xFFECECEC):Colors.transparent,
                                        icon: Icons.question_mark,
                                        textcolor: mp.baseviewPage=='help'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72),
                                        iconcolor: mp.baseviewPage=='help'?Color(0xFF0B6CF3):Color(0xFFFFFFFF).withOpacity(0.72))),
                              ],
                            ),
                          ),

                          //SizedBox(width: 40,),

                         // Profile_Settings_View_Desktop()
                    //UsermanagementSecondPagedesktop()
                          //HelpAndSupportViewForDesktop()
                          if(mp.baseviewPage=='dashboard')
                            MyDashBoardView()
                          else if(mp.baseviewPage=='inventory')
                            InventoryView()
                          else if(mp.baseviewPage=='add_category')
                            AddCategoryView()
                          else if(mp.baseviewPage=='add_item')
                            AddInventoryView(fromAddStock: true,)
                          else if(mp.baseviewPage=='product_overview')
                            PartsReportView()
                          else if(mp.baseviewPage=='manage_store')
                            UserManagementView()
                          else if(mp.baseviewPage=='item_details')
                            SingleItemDetails()
                          else if(mp.baseviewPage=='settings')
                            Profile_Settings_View()
                          else if(mp.baseviewPage=='help')
                            HelpAndSupportViewForDesktop()
                          else
                            MyDashBoardView()
                          //Single_Item_Details_Desktop_View()
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
