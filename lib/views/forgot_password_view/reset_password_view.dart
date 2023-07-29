import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
                Text("We will send you a OTP through your email",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: "Ineter",
                      color: Color(0xFF6A6868)
                  ),),
                SizedBox(height: 42,),
                Text("Enter your email address",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "Ineter",
                      color: Color(0xFF302F2F)
                  ),),
                SizedBox(height: 16,),

                Common_Container(bordercolor: null, border: 0,
                    height: 49,
                    color: Color(0xFF1366D9),
                    width: .27,
                    radius: 20,
                    mywidget:TextField(

                      cursorColor: Colors.white,
                      style: TextStyle(
                          color: Color(0xFFEFEFEF),
                          fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Inter"
                      ),

                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 10),
                          prefixIcon:

                          Padding(
                            padding: const EdgeInsets.only(left: 12,top: 12),
                            child: FaIcon(FontAwesomeIcons.circleUser,
                              size:14,
                            color: Colors.white,),
                          ),



                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,

                              borderRadius: BorderRadius.circular(20)


                          )
                      ),
                    ),
                    blurRadius: 15,
                    boxshadowopacity: .15,
                    offset: 2,
                    spreadRadius: 0),
                SizedBox(height: 43,),
                Common_Container(bordercolor: Color(0xFF1366D9),
                    border: 1,
                    height: 30,
                    color: Color(0xFFD9D9D9).withOpacity(0),
                    width: .0513,
                    radius: 5,
                    mywidget: Center(
                      child: Common_Text(fontWeight: FontWeight.w500,
                          text: "Send OTP",
                          color: Color(0xFF363636),
                          fontsize: 12,
                          fontfamily: "Inter"),
                    ),
                    blurRadius: 0,
                    boxshadowopacity: 0,
                    offset: 0,
                    spreadRadius: 0)


              ],
            )

          ],
        ),
      ),
    );
  }
}
