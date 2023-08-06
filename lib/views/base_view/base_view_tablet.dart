import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view_tablet.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_tablet.dart';
import 'package:aircraft_inventory_management/views/single-item_details/single_item_details_tablet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

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
      child: Consumer<BaseViewModel>(
        builder: (context,mp,_) {
          return Scaffold(
              backgroundColor: Color(0xFFF5F5F5),
              drawer: Drawer(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                child: Column(
                  children: [
                    Container(
                      height: 94,
                      decoration: BoxDecoration(
                        color: Color(0xFF052169),
                        image: DecorationImage(
                          image: AssetImage("assets/image_files/Bangladesh Army Aviation.png")
                        )
                      ),

                    ),
                    Expanded(child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFF052169),

                      child: Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 62),
                        GestureDetector(
                            onTap: (){
                              mp.changingOptions(context,'dashboard');

                            },
                            child: MyBaseViewContainer(
                                width: .3,
                                text: "Dashboard",
                                containercolor: mp.baseviewPage=="dashboard"?Color(0xFFECECEC):Colors.transparent,
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
                                  child: MyBaseViewContainer(
                                    width: .3,
                                      text: "Add Item",
                                      containercolor: mp.baseviewPage=="add_item"?Color(0xFFECECEC):Colors.transparent,
                                      icon: Icons.add_shopping_cart_outlined,
                                      textcolor: mp.baseviewPage=='add_item'?Color(0xFF0B6CF3):Color(0xFF797979),
                                      iconcolor: mp.baseviewPage=='add_item'?Color(0xFF0B6CF3):Color(0xFF797979))),

                              SizedBox(height: 40,),
                              GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'inventory');

                                  },
                                  child: MyBaseViewContainer(
                                    width: .3,
                                      text: "inventory",
                                      containercolor: mp.baseviewPage=="inventory"?Color(0xFFECECEC):Colors.transparent,
                                      icon: Icons.add_shopping_cart_outlined,
                                      textcolor: mp.baseviewPage=='inventory'?Color(0xFF0B6CF3):Color(0xFF797979),
                                      iconcolor: mp.baseviewPage=='inventory'?Color(0xFF0B6CF3):Color(0xFF797979))),

                              SizedBox(height: 40,),

                              GestureDetector(
                                  onTap: (){
                                    mp.changingOptions(context,'product_overview');
                                  },
                                  child: MyBaseViewContainer(
                                      width: .3,
                                      text: "Product Overview",
                                      containercolor: mp.baseviewPage=="product_overview"?Colors.white:Colors.transparent,
                                      icon: Icons.event_note_sharp,
                                      textcolor: mp.baseviewPage=='product_overview'?Color(0xFF0B6CF3):Color(0xFF797979),
                                      iconcolor: mp.baseviewPage=='product_overview'?Color(0xFF0B6CF3):Color(0xFF797979))),
                            /*SizedBox(height: 40,),
                            GestureDetector(
                              onTap: (){

                              },
                              child: MyBaseViewContainer(text: "DashBoard",
                                  icon: Icons.home,
                                  iconcolor: Color(0xFF797979),
                                  textcolor: Color(0xFF797979),
                                  containercolor: Color(0xFFECECEC)),
                            ),
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
                                containercolor: Colors.transparent)*/

                          ],
                        ),

                      ),
                        ]

                      )
                    )
                    )

              )

                  ],
                ),

              ),

              body:  Container(
                width: AppConstants().tablet_width,

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0,right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 94,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFF052169),

                          child: Row(
                            children: [
                              SizedBox(width: 30,),
                              Builder(
                                  builder: (context) {
                                    return GestureDetector(
                                        onTap: (){
                                          Scaffold.of(context).openDrawer();
                                        },
                                        child: Icon(Icons.menu,size: 46,color: Colors.white,));
                                  }
                              ),
                              Expanded(
                                child: Container(
                                  color: Color(0xFF052169),
                                  height: 94,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [

                                      Container(
                                          height: 44,
                                          width: MediaQuery.of(context).size.width*.277,
                                          decoration: BoxDecoration(
                                              color:Colors.white,
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
                                                  color: Colors.white,
                                                  size: 20,),
                                                hintText: "Search product,supplier,order"
                                            ),

                                          )
                                      ),
                                      SizedBox(width: 66,),
                                      Container(
                                        height: 36,
                                        width: 36,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1,color: Color(0xFF569DFF)),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(5))
                                        ),
                                        child: Center(
                                          child: FaIcon(FontAwesomeIcons.rotateRight,
                                            color: Color(0xFF569DFF),
                                            size: 20,),
                                        ),
                                      ),
                                      SizedBox(width: 40,),
                                      Container(
                                        height: 36,
                                        width: 36,
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
                                      SizedBox(width: 31,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                     mp.baseviewPage=="dashboard"?DashBoardForTablet():mp.baseviewPage=="inventory"?InventoryViewForTablet():InventoryViewForTablet()




                      ],
                    ),
                  ),
                ),
              )


          );
        }
      ),
    );
  }
}
