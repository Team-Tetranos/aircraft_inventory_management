import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/otp_view/otp_view_desktop.dart';
import 'package:flutter/material.dart';


class OTP_View extends StatefulWidget {
  OTP_View({Key? key, required this.data}) : super(key: key);
  Map data;
  @override
  State<OTP_View> createState() => _OTP_ViewState();
}

class _OTP_ViewState extends State<OTP_View> {

  @override
  Widget build(BuildContext context) {

    return ResponsiveLayout(desktopBody: OtpViewDesktop(data: widget.data,), tabletBody: OtpViewDesktop(data: widget.data,), mobileBody: OtpViewDesktop(data: widget.data,));
  }
}
