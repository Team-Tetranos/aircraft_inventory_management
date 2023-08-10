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
                  dvm.user.is_admin==true?GestureDetector(
                    onTap: (){
                      dvm.navigateTosubPage(context, 'add_category');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff1366D9)
                      ),
                      child: const Text('Add Aircraft', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Inter'
                      ),),
                    ),
                  ):SizedBox.shrink(),
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

                        itemBuilder: (context, index){
                          Category aircraft = dvm.aircrafts[index];
                          return Padding(
                            padding:  const EdgeInsets.only(top: 20,
                                left: 40,right: 40),
                            child: GestureDetector(
                              onTap: (){
                                dvm.pickAircraft(context, index);
                              },
                              child:Container(
                                height: 269,
                                width: MediaQuery.of(context).size.width*.18,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //border: Border.all(width: 6,color: Colors.white),
                                  image: DecorationImage(
                                      image: NetworkImage("${EndPoints().image_base_url}${aircraft.image}"),
                                      fit: BoxFit.fill
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 68,
                                    width: MediaQuery.of(context).size.width*1,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(.68),
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                                    ),
                                    child:Flex(
                                      direction: Axis.vertical,
                                      children: [
                                        Flexible(
                                        
                                            child: Center(
                                              child: Text("${aircraft.name}",
                                                style: TextStyle(
                                                    color:Colors.white,
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 16,
                                                    fontFamily: "Inter"
                                                ),),
                                            ),
                                          ),
                                      ]

                                    ),


                                  ),
                                ),
                              )
                              /*MyDashBoardContainer(
                                  bordercolor: null,
                                  border: 0,
                                  width: .181,
                                  height: 510,
                                  color: dvm.pickedIndex==index?Color(0xff1366D9):Color(0xFFFFFDFD),
                                  blur: 25,
                                  xCoordinate: -2,
                                  yCoordinate: 4,
                                  radius: 10,
                                  shadowcolor: const Color(0xFF000000).withOpacity(.1),
                                  mywidget: Padding(
                                    padding: const EdgeInsets.only(top:21,left: 21,right: 24),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                            border: Border.all(color: Colors.white,width: 1)

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
                                  )
                              ),*/
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
