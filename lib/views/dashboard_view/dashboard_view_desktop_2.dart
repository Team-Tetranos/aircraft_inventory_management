import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'dashboard_widget/container_for_dashboard.dart';

class DashboardViewDesktop2 extends StatefulWidget {
  const DashboardViewDesktop2({Key? key}) : super(key: key);

  @override
  State<DashboardViewDesktop2> createState() => _DashboardViewDesktop2State();
}

class _DashboardViewDesktop2State extends State<DashboardViewDesktop2> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardViewModel>(
      builder: (context, dvm, _) {
        return Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      dvm.navigateTosubPage(context, 'add_category');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff1366D9)
                      ),
                      child: Text('Add Aircraft', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Inter'
                      ),),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .774,

                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 6/3),
                        itemCount: 30,

                        itemBuilder: (context, index){
                          return Padding(
                            padding:  const EdgeInsets.only(
                                left: 21,right: 21,top: 31,bottom: 31),
                            child: MyDashBoardContainer(
                                bordercolor: null,
                                border: 0,
                                width: .123,
                                height: 30,
                                color: const Color(0xFFFFFDFD),
                                blur: 25,
                                xCoordinate: -2,
                                yCoordinate: 4,
                                radius: 10,
                                shadowcolor: const Color(0xFF000000).withOpacity(.1),
                                mywidget: Padding(
                                  padding: const EdgeInsets.only(left: 15.58,right: 7),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width*.036,
                                        decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTis6NBWZFYZjOXRVdTXRi2iBqjOZICphHHNw&usqp=CAU"),
                                                fit: BoxFit.cover
                                            ),
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.black)

                                        ),
                                      ),
                                      SizedBox(width: 13,),
                                      Flexible(
                                        child: Text("Diamond DA4dv",
                                          style: TextStyle(
                                              color: Color(0xFF387BD7),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              fontFamily: "Inter"
                                          ),),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          );
                        }
                    )


                  ),

                ]

            )
        );
      }
    );
  }
}
