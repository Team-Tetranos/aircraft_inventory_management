
import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:aircraft_inventory_management/res/common_widget/loading_widget.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../view_models/sign_up_view_model.dart';

class MySignUpViewDesktop extends StatefulWidget {
  const MySignUpViewDesktop({Key? key}) : super(key: key);

  @override
  State<MySignUpViewDesktop> createState() => _MySignUpViewDesktopState();
}

class _MySignUpViewDesktopState extends State<MySignUpViewDesktop> {



  @override
  Widget build(BuildContext context) {
    var svm = Provider.of<SignupViewModel>(context);
    return svm.isloading==true?Center(
      child: Loading_Animation(height: 800,
        loadingWidget: SpinKitPouringHourGlass(
          color: Colors.blue,
          size: 60,
        ), text: "Please Wait", ),
    ):
      Scaffold(
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

                          Padding(
                              padding: const EdgeInsets.only(top: 20,),
                              child:Column(
                                  children: [
                                    //SizedBox(height: 27,),
                                    Container(
                                      height: 115,
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
                                        text: "Creat an account",
                                        color: Color(0xFF1366D9),
                                        fontsize: 30,
                                        fontfamily: "Inter"),

                                    SizedBox(height: 19,),

                                    Common_Text(fontWeight: FontWeight.w400,
                                        text: "Welcome back! Please enter your details",
                                        color: Color(0xFF667085),
                                        fontsize: 16,
                                        fontfamily: "Inter"),
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
                                                controller: svm.emailController,
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
                                                controller: svm.passwordController,
                                                obscureText: svm.isobsecured,
                                                cursorColor: Color(0xFF2B2B2B),
                                                style: TextStyle(
                                                    color: Color(0xFF2B2B2B),
                                                    fontSize: 14
                                                ),

                                                decoration: InputDecoration(
                                                    contentPadding: EdgeInsets.only(bottom: 10),
                                                    suffixIcon: GestureDetector(
                                                        onTap: (){
                                                          svm.changeIsObsecured();
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
                                                text: "Confirm Password",
                                                color: Color(0xFF48505E),
                                                fontsize: 16,
                                                fontfamily: "Inter"),
                                            SizedBox(height: 6,),

                                            SizedBox(
                                              height: 30,
                                              child: TextField(
                                                controller: svm.confirmPasswordController,
                                                obscureText: svm.isobsecured,
                                                cursorColor: Color(0xFF2B2B2B),
                                                style: TextStyle(
                                                    color: Color(0xFF2B2B2B),
                                                    fontSize: 14
                                                ),

                                                decoration: InputDecoration(
                                                    contentPadding: EdgeInsets.only(bottom: 10),
                                                    suffixIcon: GestureDetector(
                                                        onTap: (){
                                                          svm.changeIsObsecured();
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
                                    child: Common_Text(
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

                                        svm.send_otp(context);

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
                                            text: "Sign Up",
                                            fontsize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontfamily:"inter", color: Color(0xFFFFFFFF),

                                          ),)),
                                    ),
                                    /*SizedBox(height: 29,),
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
                                            text: "Already have an Account? ",
                                            color: Color(0xFF667085),
                                            fontsize: 14,
                                            fontfamily: "Inter"),
                                        GestureDetector(
                                          onTap: (){
                                            svm.navigateToLogin(context);
                                          },
                                          child: Common_Text(fontWeight: FontWeight.w500,
                                              text: "Log In",
                                              color: Color(0xFF1366D9),
                                              fontsize: 14,
                                              fontfamily: "Inter"),
                                        )
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
