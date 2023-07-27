import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../view_models/blank_view_model.dart';
import 'base_view_widget.dart';

class MybaseView extends StatefulWidget {
  const MybaseView({Key? key}) : super(key: key);

  @override
  State<MybaseView> createState() => _MybaseViewState();
}

class _MybaseViewState extends State<MybaseView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<MyProviderForInventoryView>(
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
                                MyBaseViewContainer(text: "Dashboard", icon: Icons.home),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "inventory", icon: Icons.add_shopping_cart_outlined),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "Product Overview", icon: Icons.event_note_sharp),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "Manage Store", icon: Icons.storefront),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "Suppliers", icon: Icons.account_circle_outlined),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "Settings", icon: Icons.settings),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "Log Out", icon: Icons.logout),
                                SizedBox(height: 40,),
                                MyBaseViewContainer(text: "help", icon: Icons.question_mark)
                              ],
                            ),

                          ),
                          SizedBox(width: 40,),
                          MyInventoryView()
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
