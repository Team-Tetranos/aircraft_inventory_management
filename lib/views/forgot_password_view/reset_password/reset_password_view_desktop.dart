import 'package:aircraft_inventory_management/res/common_widget/loading_widget.dart';
import 'package:aircraft_inventory_management/view_models/reset_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../res/common_widget/common_widget.dart';

class ResetPasswordViewDesktop extends StatefulWidget {
  ResetPasswordViewDesktop({Key? key}) : super(key: key);
  @override
  State<ResetPasswordViewDesktop> createState() => _ResetPasswordViewDesktopState();
}

class _ResetPasswordViewDesktopState extends State<ResetPasswordViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ResetPasswordViewModel>(
      builder: (context, rpvm, _) {
        return
          Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back,size: 30,color: Colors.black,)),
              ),

            ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 100,right: 150),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Image(image: AssetImage("assets/image_files/image 8.png"))),
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
                          fontFamily: "Inter",
                          color: Color(0xFF302F2F)
                      ),),
                    SizedBox(height: 16,),

                    Common_Container(bordercolor: null, border: 0,
                        height: 49,
                        color: Color(0xFF1366D9),
                        width: 389,
                        radius: 20,
                        mywidget:TextField(
                          controller: rpvm.emailController,
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
                    GestureDetector(
                      onTap: (){
                        rpvm.send_otp(context);
                      },
                      child: Common_Container(bordercolor: Color(0xFF1366D9),
                          border: 1,
                          height: 30,
                          color: Color(0xFFD9D9D9).withOpacity(0),
                          width: 73,
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
                          spreadRadius: 0),
                    )


                  ],
                )

              ],
            ),
          ),
        );
      }
    );
  }
}
