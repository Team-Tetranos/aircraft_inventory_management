import 'package:flutter/material.dart';

class MyDashBoardContainer extends StatelessWidget {
  final double height;
 final  double width;
 final  Color color;
 final  double blur;
 final  double xCoordinate;
 final  double yCoordinate;
 final  double radius;
  final Widget mywidget;
  final shadowcolor;
  final bordercolor;
  double border;
   MyDashBoardContainer({Key? key,required this.width,required this.height,required this.color,required this.blur,required this.xCoordinate,required this.yCoordinate,required this.radius,required this.shadowcolor,required this.mywidget,required this.border,required this.bordercolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width*width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: Border.all(width: border,color: bordercolor==null?Colors.transparent:bordercolor),
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
