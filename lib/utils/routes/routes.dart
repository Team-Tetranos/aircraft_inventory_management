
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/add_inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/login_view/login_view_desktop.dart';
import 'package:aircraft_inventory_management/views/signup_view/signup_view_desktop.dart';
import 'package:flutter/material.dart';

import '../../views/Blank_Page/blank_page.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case RouteNames.blank:
        return MaterialPageRoute(builder: (_)=> BlankPage());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_)=>MyLogInView());
      case RouteNames.baseview:
        return MaterialPageRoute(builder: (_)=>MybaseView());
      case RouteNames.signup:
        return MaterialPageRoute(builder: (_)=>MySignUpView());
      case RouteNames.inventory:
        return MaterialPageRoute(builder: (_)=>MyInventoryView());
      default:
        return MaterialPageRoute(builder: (_)=>const Scaffold(
          body: Center(
            child: Text("No Page Available"),
          ),
        ));
    }
  }
}