import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/models/user.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';

import '../../dependency_injection/di.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  HiveManager hiveManager = sl.get();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async{
      User? user = await hiveManager.getUserData();
      if(user==null||user.email==null){
        Navigator.pushReplacementNamed(context, RouteNames.login);
      }else{
        Navigator.pushReplacementNamed(context, RouteNames.baseview);
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
