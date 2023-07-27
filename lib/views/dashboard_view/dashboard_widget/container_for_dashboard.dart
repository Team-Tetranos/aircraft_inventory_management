import 'package:flutter/material.dart';

class MyDashBoardContainer extends StatelessWidget {
  double height;
  double width;
  Color color;
  double blur;
  double xCoordinate;
  double yCoordinate;
  double radius;
  Widget mywidget;
  final shadowcolor;
   MyDashBoardContainer({Key? key,required this.width,required this.height,required this.color,required this.blur,required this.xCoordinate,required this.yCoordinate,required this.radius,required this.shadowcolor,required this.mywidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width*width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        boxShadow: [
          BoxShadow(
            color: shadowcolor==null?Colors.transparent:shadowcolor,
            spreadRadius: 0,
            blurRadius: blur,
            offset: Offset(xCoordinate, yCoordinate), // changes position of shadow
          ),
        ],
      ),
      child: mywidget,
    );
  }
}
