import 'package:aircraft_inventory_management/res/responsive_layout.dart';
import 'package:aircraft_inventory_management/views/login_view/login_view_desktop.dart';
import 'package:aircraft_inventory_management/views/login_view/login_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, lvm, _) {
        return ResponsiveLayout(
            desktopBody: MyLogInViewDesktop(),
            tabletBody: MyLogInViewTablet(),
            mobileBody: MyLogInViewDesktop()
        );
      }
    );
  }
}
