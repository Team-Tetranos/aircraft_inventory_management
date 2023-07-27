import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_widget/container_for_dashboard.dart';
import 'package:flutter/material.dart';

class MyDashBoardView extends StatefulWidget {
  const MyDashBoardView({Key? key}) : super(key: key);

  @override
  State<MyDashBoardView> createState() => _MyDashBoardViewState();
}

class _MyDashBoardViewState extends State<MyDashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 865,
      color: Colors.purple,
      child: Column(

        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width*.774,
            color: Colors.orange,
            child: Stack(
              children: [
                //MyDashBoardContainer(width: .1, height: 79, color: Color(0xFF3079DE), blur: 0, xCoordinate: 0, yCoordinate:0, radius: 10, shadowcolor: );
              ],
            ),
          )
        ],
      ),
    );
  }
}
