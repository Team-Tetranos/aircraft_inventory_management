import 'package:flutter/material.dart';

class MyLogIn_SignUpText extends StatelessWidget {
  double fontsize;
  FontWeight fontWeight;
  String text;
  Color color;
  String fontfamily;
   MyLogIn_SignUpText({Key? key,required this.fontWeight,required this.text,required this.color,required this.fontsize,required this.fontfamily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: fontWeight,
      fontFamily: fontfamily


    ),);
  }
}
class MyLogIn_SignUp_Container extends StatelessWidget {
  double height;
  double width;
  double radius;
  Color color;
  Widget? mywidget;
  double boxshadowopacity;
  double spreadRadius;
  double blurRadius;
  double offset;
  double border;
  final bordercolor;

   MyLogIn_SignUp_Container({Key? key,
     required this.bordercolor,
     required this.border,
     required this.height,
     required this.color,
     required this.width,
     required this.radius,
     required this.mywidget,
   required this.blurRadius,
   required this.boxshadowopacity,
   required this.offset,
   required this.spreadRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width*width,
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor==null?Colors.transparent:bordercolor,
            width: border),
        color: color,
        borderRadius: BorderRadius.circular(radius),
          boxShadow: [
      BoxShadow(
      color: Colors.grey.withOpacity(boxshadowopacity),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: Offset(0, offset), // changes position of shadow
    ),
    ],

      ),
      child: mywidget==null?SizedBox.shrink():mywidget,
    );
  }
}

