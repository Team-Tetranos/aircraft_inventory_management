import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:aircraft_inventory_management/res/endpoints.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/category.dart';
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
                     // height: MediaQuery.of(context).size.height,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .774,

                    child: GridView.builder(
                      shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1.5),
                        itemCount: dvm.aircrafts.length,

                        itemBuilder: (context, index) {
                          Category aircraft = dvm.aircrafts[index];
                          return Padding(
                              padding: const EdgeInsets.only(top: 20,
                                  left: 40, right: 40),
                              child: GestureDetector(
                                onTap: () {
                                  dvm.pickAircraft(context, index);
                                },
                                child:  Container(
                                      height: 247,
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .width * .181,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          image: DecorationImage(
                                              image: NetworkImage("${EndPoints()
                                                  .image_base_url}${aircraft
                                                  .image}"),
                                              fit: BoxFit.fill
                                          )
                                      ),
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 68,
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width * .2,
                                          decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(
                                                  .68),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(
                                                      10),
                                                  bottomRight: Radius.circular(
                                                      10))
                                          ),
                                          child: Center(
                                            child: Flexible(
                                              child: Text("${aircraft.name}",
                                                style: TextStyle(
                                                    color:Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20,
                                                    fontFamily: "Inter"
                                                ),),
                                            ),
                                          ),

                                        ),
                                      ),
                                    )
                                  /*Padding(
                                    padding: const EdgeInsets.only(top:21,left: 21,right: 24),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*.22,
                                          width: MediaQuery.of(context).size.width*.17,
                                          decoration: BoxDecoration(

                                              image: DecorationImage(
                                                  image: NetworkImage("${EndPoints().image_base_url}${aircraft.image}"),
                                                  fit: BoxFit.fill
                                              ),
                                           // borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.white,width: 10)

                                          ),
                                        ),
                                        //SizedBox(height: 20,),


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
                                  )*/


                              )

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
