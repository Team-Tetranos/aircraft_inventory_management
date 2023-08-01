
import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:aircraft_inventory_management/res/common_widget/loading_widget.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../view_models/login_view_model.dart';

class MyLogInViewDesktop extends StatefulWidget {
  MyLogInViewDesktop({Key? key}) : super(key: key);

  @override
  State<MyLogInViewDesktop> createState() => _MyLogInViewDesktopState();
}

class _MyLogInViewDesktopState extends State<MyLogInViewDesktop> {


  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, lvm, _) {
        return lvm.isloading==true?Loading_Animation(height: 800,
            loadingWidget: Center(
              child: SpinKitPouringHourGlass(
                color: Colors.blue,
                size: 60,

              ),
            ), text: 'Please wait',):
          Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(

              child: Column(
                children: [
                  Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Container(
                       height: 351,
                       width: MediaQuery.of(context).size.width*.244,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage("assets/image_files/Group 1289 (1).png"),
                           fit: BoxFit.cover
                         )
                       ),
                     ),
                      SizedBox(width: 201,),


                      Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Column(
                              children: [
                                SizedBox(height: 27,),
                                Container(
                                  height: 115.04,
                                  width: MediaQuery.of(context).size.width*.0805,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/image_files/Group 1289 (1).png"),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),

                                SizedBox(height: 39,),

                                Common_Text(fontWeight: FontWeight.w600,
                                    text: "Log in to your account",
                                    color: Color(0xFF1366D9),
                                    fontsize: 30,
                                    fontfamily: "Inter"),

                                SizedBox(height: 19,),

                                Common_Text(fontWeight: FontWeight.w400,
                                    text: "Welcome back! Please enter your details",
                                    color: Color(0xFFBCBFC5),
                                    fontsize: 16,
                                    fontfamily: "Inter"),
                                SizedBox(height: 40,),
                                Common_Container(
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

                                        Common_Text(fontWeight: FontWeight.w500,
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
                                            controller: lvm.emailController,
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
                                Common_Container(
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

                                        Common_Text(fontWeight: FontWeight.w500,
                                            text: "Password",
                                            color: Color(0xFF48505E),
                                            fontsize: 16,
                                            fontfamily: "Inter"),
                                        SizedBox(height: 6,),

                                        SizedBox(
                                          height: 30,
                                          child: TextField(
                                            controller: lvm.passwordController,
                                            obscureText: lvm.isobsecured,
                                            cursorColor: Color(0xFF2B2B2B),
                                            style: TextStyle(
                                                color: Color(0xFF2B2B2B),
                                                fontSize: 14
                                            ),

                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(bottom: 10),
                                                suffixIcon: GestureDetector(
                                                    onTap: (){lvm.changeIsObsecured();},
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
                                            Common_Container(
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
                                            Common_Text(fontWeight: FontWeight.w500,
                                                text: "Remember at Free",
                                                color: Color(0xFFBCBFC5),
                                                fontsize: 14,
                                                fontfamily: "Inter")
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 100,),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).pushNamed(RouteNames.resetview);
                                        },
                                        child: Common_Text(fontWeight: FontWeight.w500,
                                            text: "Forgot Password",
                                            color: Color(0xFF1366D9),
                                            fontsize: 14,
                                            fontfamily: "Inter"),
                                      )

                                    ],),
                                ),
                                SizedBox(height: 32,),
                                InkWell(
                                  onTap: (){
                                    //Navigator.pushNamed(context, RouteNames.baseview);
                                    lvm.login(context: context);
                                  },
                                  child: Common_Container(
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
                                      mywidget: Center(child: Common_Text(
                                        text: "Sign In",
                                        fontsize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontfamily:"inter", color: Color(0xFFFFFFFF),

                                      ),)),
                                ),
                                /*SizedBox(height: 18,),
                                Common_Container(
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
                                      Common_Text(fontWeight: FontWeight.w600,
                                          text: "Continue with google",
                                          color: Color(0xFF383E49),
                                          fontsize: 16,
                                          fontfamily: "Inter"),
                                    ],
                                  ),),),*/
                                SizedBox(height: 27,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Common_Text(fontWeight: FontWeight.w400,
                                        text: "Don't have an Account? ",
                                        color: Color(0xFF667085),
                                        fontsize: 14,
                                        fontfamily: "Inter"),
                                    InkWell(
                                      onTap: (){
                                        lvm.navigateToSignup(context);

                                      },
                                      child: Common_Text(fontWeight: FontWeight.w500,
                                          text: "Sign Up",
                                          color: Color(0xFF1366D9),
                                          fontsize: 14,
                                          fontfamily: "Inter"),
                                    )
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
    );
  }
}
