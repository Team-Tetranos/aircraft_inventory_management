import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/view_models/forgot_password_view_model.dart';
import 'package:aircraft_inventory_management/views/forgot_password_view/create_new_password/create_new_password_view_desktop.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../res/common_widget/common_widget.dart';

class CreatNewPaswordView extends StatefulWidget {
  CreatNewPaswordView({Key? key, required this.data}) : super(key: key);
  Map data;

  @override
  State<CreatNewPaswordView> createState() => _CreatNewPaswordViewState();
}

class _CreatNewPaswordViewState extends State<CreatNewPaswordView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        desktopBody: CreateNewPasswordViewDesktop(data: widget.data,),
        tabletBody: CreateNewPasswordViewDesktop(data: widget.data,),
        mobileBody: CreateNewPasswordViewDesktop(data: widget.data,)
    );
  }
}
