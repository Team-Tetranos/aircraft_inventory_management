import 'package:flutter/material.dart';

class MyBaseViewContainer extends StatelessWidget {

  String text;
  IconData icon;
  Color textcolor;
  Color iconcolor;
   MyBaseViewContainer({Key? key,required this.text,required this.icon, required this.iconcolor,required this.textcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 39,
        child: Padding(
          padding: const EdgeInsets.only(left: 60.5),
          child: Row(
            children: [
              Icon(icon,
                size: 21,
                color: iconcolor,

              ),
              SizedBox(width: 14,),
              Text(text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",
                color: textcolor
              ),)
            ],
          ),
        ),
      );

  }
}
