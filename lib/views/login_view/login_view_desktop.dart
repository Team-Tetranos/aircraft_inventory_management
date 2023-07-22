import 'dart:ffi';

import 'package:aircraft_inventory_management/views/login_signup_widget.dart';
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
      body: Container(
        height: 960,
        width: MediaQuery.of(context).size.width*1,
        decoration: BoxDecoration(
          //color: Colors.black.withOpacity(.8)

          image: DecorationImage(
        colorFilter: ColorFilter.mode(Colors.white.withOpacity(.7), BlendMode.dstATop),

              image: NetworkImage("https://media.istockphoto.com/id/1441075752/photo/fire-and-flame-burning-fuel-oil-gas-png-on-black-background.webp?b=1&s=170667a&w=0&k=20&c=exOuDMLCMeF2cysMPsBOhypR4gImUMupUUcjJIjqV1w="),

              fit: BoxFit.cover

          ),

      ),
        child: SingleChildScrollView(

          child: Column(
            children: [
              Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyLogInContainer(
                    bordercolor: null,
                    border: 0,
                    height: 229,
                      color: Colors.white,
                      width: .236,
                      radius: 0,
                      mywidget: null,
                  blurRadius: 0,
                  spreadRadius: 0,
                  boxshadowopacity: 0,
                  offset: 0,),


                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child:MyLogInContainer(
                      bordercolor: null,
                      border: 0,
                      height: 720,
                      width: .322,
                      radius: 10,
                      color: Colors.black.withOpacity(.68),
                      spreadRadius: 0,
                      boxshadowopacity: 0,
                      offset: 0,
                      blurRadius: 0,

                      mywidget: Column(
                        children: [
                          SizedBox(height: 27,),
                          MyLogInContainer(
                            bordercolor: null,
                            border: 0,
                            height: 74,
                              color: Colors.white,
                              width: 0.076,
                              radius: 0,
                              mywidget: null,
                          blurRadius: 0,
                          offset: 0,
                          boxshadowopacity: 0,
                          spreadRadius: 0,),

                          SizedBox(height: 39,),

                          MyLogInText(fontWeight: FontWeight.w600,
                              text: "Log in to your account",
                              color: Color(0xFF1366D9),
                              fontsize: 30,
                              fontfamily: "Inter"),

                          SizedBox(height: 19,),

                          MyLogInText(fontWeight: FontWeight.w400,
                              text: "Welcome back! Please enter your details",
                              color: Color(0xFFBCBFC5),
                              fontsize: 16,
                              fontfamily: "Inter"),
                          SizedBox(height: 40,),
                          MyLogInContainer(
                            bordercolor: null,
                            border: 0,
                            blurRadius: 0,
                            spreadRadius: 0,
                            offset: 0,
                            boxshadowopacity: 0,
                            height: 80,
                            color: Colors.white,
                            width: .25,
                            radius: 20,
                            mywidget: Padding(
                              padding: const EdgeInsets.only(left: 19,top:10,bottom: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  MyLogInText(fontWeight: FontWeight.w500,
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
                          MyLogInContainer(
                            bordercolor: null,
                            border: 0,
                            blurRadius: 0,
                            spreadRadius: 0,
                            boxshadowopacity: 0,
                            offset: 0,
                            height: 80,
                            color: Colors.white,
                            width: .25,
                            radius: 20,
                            mywidget:Padding(
                              padding: const EdgeInsets.only(left: 19,top:10,bottom: 11),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  MyLogInText(fontWeight: FontWeight.w500,
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
                            padding: const EdgeInsets.only(left: 52,right: 51),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      MyLogInContainer(
                                        bordercolor: null,
                                        border: 0,
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
                                      MyLogInText(fontWeight: FontWeight.w500,
                                          text: "Remember at Free",
                                          color: Color(0xFFBCBFC5),
                                          fontsize: 14,
                                          fontfamily: "Inter")
                                    ],
                                  ),
                                ),
                                MyLogInText(fontWeight: FontWeight.w500,
                                    text: "Forgot Password",
                                    color: Color(0xFF1366D9),
                                    fontsize: 14,
                                    fontfamily: "Inter")

                              ],),
                          ),
                          SizedBox(height: 32,),
                          MyLogInContainer(
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
                              mywidget: Center(child: MyLogInText(
                                text: "Sign In",
                                fontsize: 16,
                                fontWeight: FontWeight.w600,
                                fontfamily:"inter", color: Color(0xFFFFFFFF),

                              ),)),
                          SizedBox(height: 18,),
                          MyLogInContainer(
                            bordercolor: null,
                            border: 0,
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
                                MyLogInText(fontWeight: FontWeight.w600,
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
                              MyLogInText(fontWeight: FontWeight.w400,
                                  text: "Don't have an Account? ",
                                  color: Color(0xFFBCBFC5),
                                  fontsize: 14,
                                  fontfamily: "Inter"),
                              MyLogInText(fontWeight: FontWeight.w500,
                                  text: "Sign Up",
                                  color: Color(0xFF1366D9),
                                  fontsize: 14,
                                  fontfamily: "Inter")
                            ],
                          )



                        ],
                      ),
                    )
                  )
                ],
              ),),
            ],
          ),
        ),




    ));
  }
}
