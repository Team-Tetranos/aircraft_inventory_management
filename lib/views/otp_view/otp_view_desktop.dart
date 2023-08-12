import 'package:aircraft_inventory_management/res/common_widget/loading_widget.dart';
import 'package:aircraft_inventory_management/view_models/otp_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

import '../../res/common_widget/common_widget.dart';

class OtpViewDesktop extends StatefulWidget {
  OtpViewDesktop({Key? key, required this.data}) : super(key: key);
  Map data;
  @override
  State<OtpViewDesktop> createState() => _OtpViewDesktopState();
}

class _OtpViewDesktopState extends State<OtpViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<OtpViewModel>(
      builder: (context, ovm, _) {
        return
          Scaffold(

          backgroundColor: Colors.white,
          body:
          Padding(
            padding: const EdgeInsets.only(left: 100,right: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: const Image(image: AssetImage("assets/image_files/image 8.png"))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Reset password",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          fontFamily: "Inter",
                          color: Color(0xFF1366D9)
                      ),),
                    const SizedBox(height: 37,),
                    const Text("We sent a one time OTP in your email",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: "Inter",
                          color: Color(0xFF6A6868)
                      ),),
                    const SizedBox(height: 42,),
                    const Text("Please Enter your OTP",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: "Inter",
                          color: Color(0xFF302F2F)
                      ),),
                    const SizedBox(height: 16,),

                    SizedBox(
                        height: 50,
                        width: 300,
                        child: PinCodeTextField(appContext: context,
                          showCursor: true,
                          onChanged: (s){
                            ovm.updateOtpCode(s);
                          },

                          length: 6,
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              borderWidth: 1,
                              selectedColor: Colors.blue,
                              inactiveColor: Color(0xFF77869D).withOpacity(.8)
                          ),
                          keyboardType: TextInputType.number,
                        )),


                    const SizedBox(height: 43,),
                    GestureDetector(
                      onTap: ovm.otp_code.length!=6?null:(){
                        try{
                          ovm.verifyOtp(context, widget.data);
                        }catch(e){
                          print(e);
                        }

                      },
                      child: Common_Container(bordercolor: Color(0xFF1366D9),
                          border: 1,
                          height: 30,
                          color: ovm.otp_code.length==6?const Color(0xFF1366D9).withOpacity(1):Colors.grey.withOpacity(0.7),
                          width: 73,
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
                    ),
                    const SizedBox(height: 10,)


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
