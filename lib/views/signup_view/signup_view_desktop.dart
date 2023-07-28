import 'dart:ffi';

import 'package:aircraft_inventory_management/res/common_widget/login_signup_widget.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MySignUpView extends StatefulWidget {
  const MySignUpView({Key? key}) : super(key: key);

  @override
  State<MySignUpView> createState() => _MySignUpViewState();
}

class _MySignUpViewState extends State<MySignUpView> {
  bool isobsecured=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: 960,
          width: MediaQuery.of(context).size.width*1,
          decoration: BoxDecoration(
            color: Colors.white



          ),
          child: SingleChildScrollView(

            child: Column(
              children: [
                Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyLogIn_SignUp_Container(
                      bordercolor: null,
                      border: 0,
                        blurRadius: 0,
                        spreadRadius: 0,
                        boxshadowopacity: 0,
                        offset: 0,
                        height: 229,
                        color: Colors.black,
                        width: .236,
                        radius: 0,
                        mywidget: null),


                    Padding(
                        padding: const EdgeInsets.only(top: 20,),
                        child:Column(
                            children: [
                              //SizedBox(height: 27,),
                              MyLogIn_SignUp_Container(
                                bordercolor: null,
                                border: 0,
                                  blurRadius: 0,
                                  spreadRadius: 0,
                                  boxshadowopacity: 0,
                                  offset: 0,
                                  height: 74, color: Colors.black, width: 0.076, radius: 0, mywidget: null),

                              SizedBox(height: 39,),

                              MyLogIn_SignUpText(fontWeight: FontWeight.w600,
                                  text: "Creat an account",
                                  color: Color(0xFF1366D9),
                                  fontsize: 30,
                                  fontfamily: "Inter"),

                              SizedBox(height: 19,),

                              MyLogIn_SignUpText(fontWeight: FontWeight.w400,
                                  text: "Welcome back! Please enter your details",
                                  color: Color(0xFF667085),
                                  fontsize: 16,
                                  fontfamily: "Inter"),
                              SizedBox(height: 40,),
                              MyLogIn_SignUp_Container(
                                bordercolor: null,
                                border: 0,
                                blurRadius: 4,
                                spreadRadius: 3,
                                boxshadowopacity: .4,
                                offset: 3,
                                height: 80,
                                color: Colors.white,
                                width: .25,
                                radius: 20,
                                mywidget: Padding(
                                  padding: const EdgeInsets.only(left: 19,top:10,bottom: 11),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      MyLogIn_SignUpText(fontWeight: FontWeight.w500,
                                          text: "Name",
                                          color: Color(0xFF48505E),
                                          fontsize: 16,
                                          fontfamily:"inter"),
                                      SizedBox(height: 6,),

                                      SizedBox(
                                        height: 30,
                                        child: TextField(
                                          //  textAlign: TextAlign.center,
                                          // textAlignVertical: TextAlignVertical.center,
                                          cursorColor: Color(0xFF2B2B2B),
                                          style: TextStyle(
                                              color: Color(0xFF2B2B2B),
                                              fontSize: 14
                                          ),

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(bottom: 10),
                                              prefixIcon:

                                              Padding(
                                                padding: const EdgeInsets.only(left: 8,top: 10),
                                                child: FaIcon(FontAwesomeIcons.circleUser,
                                                  size:14,),
                                              ),



                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,

                                                  borderRadius: BorderRadius.circular(20)


                                              )
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),),
                              SizedBox(height: 40,),
                              MyLogIn_SignUp_Container(
                                bordercolor: null,
                                border: 0,
                                blurRadius: 4,
                                spreadRadius: 3,
                                boxshadowopacity: .4,
                                offset: 3,
                                height: 80,
                                color: Colors.white,
                                width: .25,
                                radius: 20,
                                mywidget: Padding(
                                  padding: const EdgeInsets.only(left: 19,top:10,bottom: 11),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      MyLogIn_SignUpText(fontWeight: FontWeight.w500,
                                          text: "Email",
                                          color: Color(0xFF48505E),
                                          fontsize: 16,
                                          fontfamily:"inter"),
                                      SizedBox(height: 6,),

                                      SizedBox(
                                        height: 30,
                                        child: TextField(
                                          //  textAlign: TextAlign.center,
                                          // textAlignVertical: TextAlignVertical.center,
                                          cursorColor: Color(0xFF2B2B2B),
                                          style: TextStyle(
                                              color: Color(0xFF2B2B2B),
                                              fontSize: 14
                                          ),

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(bottom: 10),
                                              prefixIcon:

                                              Padding(
                                                padding: const EdgeInsets.only(left: 8,top: 10),
                                                child: FaIcon(FontAwesomeIcons.circleUser,
                                                  size:14,),
                                              ),



                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,

                                                  borderRadius: BorderRadius.circular(20)


                                              )
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),),
                              SizedBox(height: 40,),
                              MyLogIn_SignUp_Container(
                                bordercolor: null,
                                border: 0,
                                blurRadius: 4,
                                spreadRadius: 3,
                                boxshadowopacity: .4,
                                offset: 3,
                                height: 80,
                                color: Colors.white,
                                width: .25,
                                radius: 20,
                                mywidget:Padding(
                                  padding: const EdgeInsets.only(left: 19,top:10,bottom: 11),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      MyLogIn_SignUpText(fontWeight: FontWeight.w500,
                                          text: "Password",
                                          color: Color(0xFF48505E),
                                          fontsize: 16,
                                          fontfamily: "Inter"),
                                      SizedBox(height: 6,),

                                      SizedBox(
                                        height: 30,
                                        child: TextField(
                                          obscureText: isobsecured,
                                          cursorColor: Color(0xFF2B2B2B),
                                          style: TextStyle(
                                              color: Color(0xFF2B2B2B),
                                              fontSize: 14
                                          ),

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.only(bottom: 10),
                                              suffixIcon: GestureDetector(
                                                  onTap: (){
                                                    setState(() {
                                                      isobsecured=!isobsecured;
                                                    });
                                                  },
                                                  child: Icon(Icons.remove_red_eye,size: 16,)),
                                              prefixIcon:

                                              Padding(
                                                  padding: const EdgeInsets.only(left: 3,top: 10,bottom: 10),
                                                  child: FaIcon(FontAwesomeIcons.lock,size: 14,)
                                              ),



                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,

                                                  borderRadius: BorderRadius.circular(20)


                                              )
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ), ),
                              SizedBox(height: 40,),

                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width*.25,
                              child: MyLogIn_SignUpText(
                                      color: Color(0xFF667085),
                                      fontWeight: FontWeight.w400,
                                      fontsize: 14,
                                      fontfamily: "Inter",
                                      text: "Password must be at least 8 charecter with letter,number and special charecter",

                                    ),
                            ),


                              SizedBox(height: 8,),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, RouteNames.baseview);
                                },
                                child: MyLogIn_SignUp_Container(
                                  bordercolor: null,
                                  border: 0,
                                    blurRadius: 0,
                                    spreadRadius: 0,
                                    boxshadowopacity: 0,
                                    offset: 0,
                                    height: 44,
                                    color: Color(0xFF1366D9),
                                    width: .25,
                                    radius: 5,
                                    mywidget: Center(child: MyLogIn_SignUpText(
                                      text: "Sign In",
                                      fontsize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontfamily:"inter", color: Color(0xFFFFFFFF),

                                    ),)),
                              ),
                              SizedBox(height: 29,),
                              MyLogIn_SignUp_Container(
                                bordercolor: Color(0xFF1366D9),
                                border: 1,
                                blurRadius: 0,
                                spreadRadius: 0,
                                boxshadowopacity: 0,
                                offset: 0,
                                height: 44, color: Color(0xFFFFFFFF),
                                width: .25,
                                radius: 5,
                                mywidget: Center(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                        FontAwesomeIcons.google // Use Google Icons with Google Fonts
                                    ),
                                    SizedBox(width: 12,),
                                    MyLogIn_SignUpText(fontWeight: FontWeight.w600,
                                        text: "Continue with google",
                                        color: Color(0xFF383E49),
                                        fontsize: 16,
                                        fontfamily: "Inter"),
                                  ],
                                ),),),
                              SizedBox(height: 27,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MyLogIn_SignUpText(fontWeight: FontWeight.w400,
                                      text: "Don't have an Account? ",
                                      color: Color(0xFF667085),
                                      fontsize: 14,
                                      fontfamily: "Inter"),
                                  MyLogIn_SignUpText(fontWeight: FontWeight.w500,
                                      text: "Sign Up",
                                      color: Color(0xFF1366D9),
                                      fontsize: 14,
                                      fontfamily: "Inter")
                                ],
                              ),
                              SizedBox(height: 50,)



                            ],
                          ),

                    )
                  ],
                ),),
              ],
            ),
          ),




        ));
  }
}
