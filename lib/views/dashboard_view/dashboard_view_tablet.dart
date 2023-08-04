import 'package:aircraft_inventory_management/res/constants.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/category.dart';
import '../../res/endpoints.dart';
import 'dashboard_widget/container_for_dashboard.dart';

class DashBoardForTablet extends StatefulWidget {
  const DashBoardForTablet({Key? key}) : super(key: key);

  @override
  State<DashBoardForTablet> createState() => _DashBoardForTabletState();
}

class _DashBoardForTabletState extends State<DashBoardForTablet> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardViewModel>(
      builder: (context,dvm,_) {
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
                        Container(
                            height: 52,
                            width: MediaQuery.of(context).size.width*.844,
                            decoration: BoxDecoration(
                                color:Color(0xFFD9D9D9),
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
                        SizedBox(height: 84,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Flexible(
                            child: Text("All Categories",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: "inter",
                              fontWeight: FontWeight.w500
                            ),),
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width*.106,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff1366D9)
                            ),
                            child: Center(
                              child: Text('Add Aircraft', style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Inter'
                              ),),
                            ),
                          ),


                        ],),
                          SizedBox(height: 55,),

                          GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.5),
                              itemCount: dvm.aircrafts.length,

                              itemBuilder: (context, index){
                                Category aircraft = dvm.aircrafts[index];
                                return  GestureDetector(
                                    onTap: (){
                                      dvm.pickAircraft(context, index);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12,right: 12,top: 12,bottom: 12),
                                      child: MyDashBoardContainer(
                                          bordercolor: null,
                                          border: 0,
                                          width: .11,
                                          height: 40,
                                          color: dvm.pickedIndex==index?Color(0xff1366D9):Color(0xFFFFFDFD),
                                          blur: 25,
                                          xCoordinate: -2,
                                          yCoordinate: 4,
                                          radius: 10,
                                          shadowcolor: const Color(0xFF000000).withOpacity(.1),
                                          mywidget: Column(
                                              children: [
                                                SizedBox(height: 10,),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*.3,
                                                  height: MediaQuery.of(context).size.height*.3,
                                                  decoration: BoxDecoration(

                                                      image: DecorationImage(
                                                          image: NetworkImage("${EndPoints().image_base_url}${aircraft.image}"),
                                                          fit: BoxFit.fill
                                                      ),
                                                      // borderRadius: BorderRadius.circular(10),
                                                      border: Border.all(color: Colors.white,width: 10)

                                                  ),
                                                ),


                                                Flexible(
                                                  child: Text("${aircraft.name}",
                                                    style: TextStyle(
                                                        color:dvm.pickedIndex==index?Colors.white:Color(0xFF387BD7),
                                                        fontWeight: FontWeight.w800,
                                                        fontSize: 16,
                                                        fontFamily: "Inter"
                                                    ),),
                                                )
                                              ],
                                            ),

                                      ),
                                    ),
                                  );

                              }
                          ),
                        SizedBox(height: 30,)



                      ],
                    ),
                  ),
                ),
              )


          ),
        );
      }
    );
  }
}
