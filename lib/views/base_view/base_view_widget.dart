import 'package:flutter/material.dart';

class MyBaseViewContainer extends StatelessWidget {

  String text;
  IconData icon;
  Color textcolor;
  Color iconcolor;
  Color containercolor;
  double width;

   MyBaseViewContainer({Key? key,required this.text,required this.icon, required this.iconcolor,required this.textcolor,required this.containercolor,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: MediaQuery.of(context).size.width*width,

        decoration: BoxDecoration(
          color: containercolor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomLeft: Radius.circular(100))
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            children: [
              Icon(icon,
                size: 21,
                color: iconcolor,

              ),
              SizedBox(width: 14,),
              Flexible(

                child: Text(text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter",
                  color: textcolor
                ),),
              )
            ],
          ),
        ),
      );

  }
}
