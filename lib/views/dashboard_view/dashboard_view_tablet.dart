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
        return Container(

          child: Column(
            children: [
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
                        child:
                                Container(
                                  height: 40,
                                  width: .11,

                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("${EndPoints().image_base_url}${aircraft.image}"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child:  Text("${aircraft.name}",
                                          style: TextStyle(
                                              color:Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 30,
                                              fontFamily: "Inter"
                                          ),),

                                    ),
                                  )
                                ),





                        /*MyDashBoardContainer(
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
                                height: MediaQuery.of(context).size.height*.27,
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

                        ),*/

                      )
                    );

                  }
              ),
              SizedBox(height: 30,)
            ],
          ),
        );
      }
    );

  }
}
