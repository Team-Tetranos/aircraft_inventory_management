import 'package:flutter/material.dart';

class MyBaseViewContainer extends StatelessWidget {

  String text;
  IconData icon;
   MyBaseViewContainer({Key? key,required this.text,required this.icon}) : super(key: key);

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
                color: Color(0xFF797979),
              ),
              SizedBox(width: 14,),
              Text(text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: "Inter",
                color: Color(0xFF797979)
              ),)
            ],
          ),
        ),
      );

  }
}
