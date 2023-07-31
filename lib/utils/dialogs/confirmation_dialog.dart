import 'package:flutter/material.dart';

confirmDialog(BuildContext context, String title, String subtitle, Function fyes, Function fno){
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(title, style: TextStyle(color: Colors.black)),
      content: Text(subtitle, style: TextStyle(color: Colors.black)),
      actions: <Widget>[
        TextButton(
          onPressed: (){
            fyes();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          ),
          child: const Text('Yes', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: (){
            fno();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          ),
          child: const Text('No', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  });
}