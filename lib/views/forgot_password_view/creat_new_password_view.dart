import 'package:aircraft_inventory_management/view_models/view_model_for_forgot_password_view/forgot_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../res/common_widget/common_widget.dart';

class CreatNewPaswordView extends StatefulWidget {
  const CreatNewPaswordView({Key? key}) : super(key: key);

  @override
  State<CreatNewPaswordView> createState() => _CreatNewPaswordViewState();
}

class _CreatNewPaswordViewState extends State<CreatNewPaswordView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ForgotPassWord>(
      builder: (context,mp,_) {
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
                    Text("Enter new password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: "Ineter",
                          color: Color(0xFF302F2F)
                      ),),
                    SizedBox(height: 11,),

                    Common_Container(bordercolor: null, border: 0,
                        height: 49,
                        color: Color(0xFF1366D9),
                        width: .27,
                        radius: 20,
                        mywidget:TextField(
                          obscureText: mp.isObsecureforEntryPasword,
                          obscuringCharacter: "*",

                          cursorColor: Colors.white,
                          style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter"
                          ),

                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 30),
                              prefixIcon:

                              Padding(
                                padding: const EdgeInsets.only(left: 10,),
                                child: Icon(Icons.lock_outline_rounded,
                                  size:20,
                                  color: Colors.white,),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: (){
                                  mp.changingboolforentry(mp.isObsecureforEntryPasword);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: Icon(Icons.remove_red_eye,
                                  size: 20,
                                  color: Colors.white,),
                                ),
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
                    SizedBox(height: 21,),
                    Common_Text(fontWeight:FontWeight.w500,
                        text: "Confirm new password",
                        color: Color(0xFF302F2F),
                        fontsize: 16,
                        fontfamily: "Inter"),
                    SizedBox(height: 11,),
                    Common_Container(bordercolor: null, border: 0,
                        height: 49,
                        color: Color(0xFF1366D9),
                        width: .27,
                        radius: 20,
                        mywidget:TextField(
                          obscureText: mp.isObsecureforConfirmPassword,
                          obscuringCharacter: "*",

                          cursorColor: Colors.white,
                          style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter"
                          ),

                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 30),
                              prefixIcon:

                              Padding(
                                padding: const EdgeInsets.only(left: 10,),
                                child: Icon(Icons.lock_outline_rounded,
                                  size:20,
                                  color: Colors.white,),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: (){
                                  mp.changingboolforconfirm(mp.isObsecureforConfirmPassword);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: Icon(Icons.remove_red_eye,
                                    size: 20,
                                    color: Colors.white,),
                                ),
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
                    SizedBox(height: 22,),
                    Common_Text(fontWeight: FontWeight.w400,
                        text: "Must be atleast 8 with letter,number and special character",
                        color: Color(0xFF1366D9),
                        fontsize: 14,
                        fontfamily: "Inter"),
                    SizedBox(height: 32,),

                    Common_Container(bordercolor: null,
                        border: 1,
                        height: 30,
                        color: Color(0xFF1366D9).withOpacity(1),
                        width: .0513,
                        radius: 5,
                        mywidget: Center(
                          child: Common_Text(fontWeight: FontWeight.w500,
                              text: "Create",
                              color: Colors.white,
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
    );
  }
}
