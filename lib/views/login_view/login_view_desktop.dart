
import 'package:aircraft_inventory_management/res/common_widget/login_signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLogInView extends StatefulWidget {
  const MyLogInView({Key? key}) : super(key: key);

  @override
  State<MyLogInView> createState() => _MyLogInViewState();
}

class _MyLogInViewState extends State<MyLogInView> {
  bool isobsecured=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

          child: Column(
            children: [
              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyLogIn_SignUp_Container(
                    bordercolor: null,
                    border: 0,
                    height: 229,
                    color: Colors.black,
                    width: .236,
                    radius: 0,
                    mywidget: null,
                    blurRadius: 0,
                    spreadRadius: 0,
                    boxshadowopacity: 0,
                    offset: 0,),


                  Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                          children: [
                            SizedBox(height: 27,),
                            MyLogIn_SignUp_Container(
                              bordercolor: null,
                              border: 0,
                              height: 74,
                              color: Colors.black,
                              width: 0.076,
                              radius: 0,
                              mywidget: null,
                              blurRadius: 0,
                              offset: 0,
                              boxshadowopacity: 0,
                              spreadRadius: 0,),

                            SizedBox(height: 39,),

                            MyLogIn_SignUpText(fontWeight: FontWeight.w600,
                                text: "Log in to your account",
                                color: Color(0xFF1366D9),
                                fontsize: 30,
                                fontfamily: "Inter"),

                            SizedBox(height: 19,),

                            MyLogIn_SignUpText(fontWeight: FontWeight.w400,
                                text: "Welcome back! Please enter your details",
                                color: Color(0xFFBCBFC5),
                                fontsize: 16,
                                fontfamily: "Inter"),
                            SizedBox(height: 40,),
                            MyLogIn_SignUp_Container(
                              bordercolor: null,
                              border: 0,
                              blurRadius: 4,
                              spreadRadius: 3,
                              offset: 3,
                              boxshadowopacity: .3,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 0,right: 0,),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        MyLogIn_SignUp_Container(
                                            bordercolor: Colors.black,
                                            border: 1,
                                            blurRadius: 0,
                                            spreadRadius: 0,
                                            boxshadowopacity: 0,
                                            offset: 0,
                                            height: 16,
                                            color: Colors.white,
                                            width: .0102,
                                            radius: 4,
                                            mywidget: null),
                                        SizedBox(width: 8,),
                                        MyLogIn_SignUpText(fontWeight: FontWeight.w500,
                                            text: "Remember at Free",
                                            color: Color(0xFFBCBFC5),
                                            fontsize: 14,
                                            fontfamily: "Inter")
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 100,),
                                  MyLogIn_SignUpText(fontWeight: FontWeight.w500,
                                      text: "Forgot Password",
                                      color: Color(0xFF1366D9),
                                      fontsize: 14,
                                      fontfamily: "Inter")

                                ],),
                            ),
                            SizedBox(height: 32,),
                            MyLogIn_SignUp_Container(
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
                            SizedBox(height: 18,),
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
                            )



                          ],
                        ),
                      )

                ],
              ),),
            ],
          ),
        ),

    );
  }
}
