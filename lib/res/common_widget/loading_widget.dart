import 'package:flutter/material.dart';

class Loading_Animation extends StatelessWidget {
  Widget loadingWidget;
  double height;
  String text;

   Loading_Animation({Key? key,required this.height,required this.loadingWidget,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          loadingWidget,
          SizedBox(height: 20,),
          Text(text.toString(),
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 30,
            color: Colors.blue,
            fontFamily: "Inter"
          ),)
        ],
      ),
    );
  }
}
