import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../res/common_widget/common_widget.dart';

class OTP_View extends StatefulWidget {
  const OTP_View({Key? key}) : super(key: key);

  @override
  State<OTP_View> createState() => _OTP_ViewState();
}

class _OTP_ViewState extends State<OTP_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
            Padding(
              padding: const EdgeInsets.only(left: 204,right: 204),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("assets/image_files/image 8.png")),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reset password",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            fontFamily: "Ineter",
                            color: Color(0xFF1366D9)
                        ),),
                      SizedBox(height: 37,),
                      Text("We sent a onr time OTP in your email",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            fontFamily: "Ineter",
                            color: Color(0xFF6A6868)
                        ),),
                      SizedBox(height: 42,),
                      Text("Please Enter your OTP",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: "Ineter",
                            color: Color(0xFF302F2F)
                        ),),
                      SizedBox(height: 16,),

                      SizedBox(
                        height: 50,
                          width: 300,
                          child: PinCodeTextField(appContext: context,
                            showCursor: true,

                            length: 5,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            borderWidth: 1,
                            selectedColor: Colors.blue,
                            inactiveColor: Color(0xFF77869D).withOpacity(.8)
                          ),
                          keyboardType: TextInputType.number,
                          )),


                      SizedBox(height: 43,),
                      Common_Container(bordercolor: Color(0xFF1366D9),
                          border: 1,
                          height: 30,
                          color: Color(0xFF1366D9).withOpacity(1),
                          width: .0513,
                          radius: 5,
                          mywidget: Center(
                            child: Common_Text(fontWeight: FontWeight.w500,
                                text: "Confirm",
                                color: Colors.white,
                                fontsize: 12,
                                fontfamily: "Inter"),
                          ),
                          blurRadius: 0,
                          boxshadowopacity: 0,
                          offset: 0,
                          spreadRadius: 0),
                      SizedBox(height: 10,)


                    ],
                  )

                ],
              ),
            ),


    );
  }
}
