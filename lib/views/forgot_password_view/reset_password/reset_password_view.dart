import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/forgot_password_view/reset_password/reset_password_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPasswordView extends StatefulWidget {
  ResetPasswordView({Key? key}) : super(key: key);
  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody: ResetPasswordViewDesktop()
        , tabletBody: ResetPasswordViewDesktop(),
        mobileBody: ResetPasswordViewDesktop()
    );
  }
}
