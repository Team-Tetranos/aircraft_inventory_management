
import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:aircraft_inventory_management/res/common_widget/loading_widget.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
        return
          Scaffold(
          //backgroundColor: Colors.white,
          body: SingleChildScrollView(

              child: Container(
                height: 960,
                width: MediaQuery.of(context).size.width*1,
                decoration: BoxDecoration(
                  color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/image_files/Login Skin Backgroung-4 1.png"),
                      fit: BoxFit.cover,
                    ),





                ),
                child: Stack(
                  children: [
                    Container(

                      width: MediaQuery.of(context).size.width*1,

                        color: Colors.white.withOpacity(.69)


                      ),



                    Column(
                      children: [
                        Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 351,
                              width: 351.36,
                              // MediaQuery.of(context).size.width*.244,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/image_files/logo-1.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                            SizedBox(width: 100,),


                            Padding(
                              padding: const EdgeInsets.only(top: 60,bottom: 50),
                              child: Container(
                                //height: 750,
                                width: 463.68,
                                //MediaQuery.of(context).size.width*.322,

                                decoration: BoxDecoration(
                                  color: Color(0xFFD4EAFC),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //border: Border.all(color: Colors.black.withOpacity(.3),width: 5)
                                  boxShadow: [

                                      BoxShadow(
                                        color: Color(0xFF000000).withOpacity(.5),
                                        spreadRadius: 0,
                                        blurRadius: 30,
                                        offset: Offset(-4,4), // changes position of shadow
                                      ),

                                  ]
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 27,),
                                      Container(
                                        height: 115.04,
                                        width: 115.92,
                                        //MediaQuery.of(context).size.width*.0805,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("assets/image_files/logo-1.png"),
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
                                          color: Color(0xFF302F2F),
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
                                        width: 360,
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
                                        width: 360,
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
                                          padding: const EdgeInsets.only(left: 60,right: 60),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [


                                           GestureDetector(
                                                    onTap: (){
                                                      Navigator.of(context).pushNamed(RouteNames.resetview);
                                                    },
                                                    child: Common_Text(fontWeight: FontWeight.w500,
                                                        text: "Forgot Password",
                                                        color: Color(0xFF1366D9),
                                                        fontsize: 14,
                                                        fontfamily: "Inter"),
                                                  ),



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
                                            width: 360,
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
                                              color: Color(0xFF302F2F),
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
                                      ),


                                      Text('Roottop', style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),),

                                      SizedBox(height: 27,),



                                    ],
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),),
                      ],
                    ),
                  ],

                ),
              ),
            ),

        );
      }
    );
  }
}
