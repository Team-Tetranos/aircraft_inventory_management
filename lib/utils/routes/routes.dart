
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view.dart';

import 'package:aircraft_inventory_management/views/forgot_password_view/create_new_password/creat_new_password_view.dart';
import 'package:aircraft_inventory_management/views/onboarding_screen/onboarding_screen.dart';
import 'package:aircraft_inventory_management/views/otp_view/otp_view.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/login_view/login_view.dart';
import 'package:aircraft_inventory_management/views/signup_view/sign_up_view.dart';
import 'package:aircraft_inventory_management/views/signup_view/signup_view_desktop.dart';
import 'package:flutter/material.dart';

import '../../views/Blank_Page/blank_page.dart';
import '../../views/dashboard_view/dashboard_view_tablet.dart';
import '../../views/forgot_password_view/reset_password/reset_password_view.dart';
import '../../views/onboarding_screen/onboard_second_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings routeSettings){

    var args = routeSettings.arguments;

    switch(routeSettings.name){
      case RouteNames.blank:
        return MaterialPageRoute(builder: (_)=> BlankPage());
      case RouteNames.onboardsecond:
        return MaterialPageRoute(builder: (_)=>OnBoardSecondScreenView());
      case RouteNames.onboardview:
        return MaterialPageRoute(builder: (_)=>OnboardingView());
      case RouteNames.dashboardtablet:
        return MaterialPageRoute(builder: (_)=>DashBoardForTablet());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_)=>LoginView());
      case RouteNames.dashboardview:
        return MaterialPageRoute(builder: (_)=>MyDashBoardView());
      case RouteNames.baseview:
        return MaterialPageRoute(builder: (_)=>BaseViewHome());
      case RouteNames.signup:
        return MaterialPageRoute(builder: (_)=>SignUpView());
      case RouteNames.resetview:
        Map passData = {};
        if(args is Map){
          passData = args;
        }
        return MaterialPageRoute(builder: (_)=>ResetPasswordView());
      case RouteNames.otpview:
        Map passData = {};
        if(args is Map){
          passData = args;
        }
        return MaterialPageRoute(builder: (_)=>OTP_View(data: passData,));
      case RouteNames.creatnewpasword:
        Map passData = {};
        if(args is Map){
          passData = args;
        }
        return MaterialPageRoute(builder: (_)=>CreatNewPaswordView(data: passData,));
      case RouteNames.inventory:
        return MaterialPageRoute(builder: (_)=>InventoryViewForDesktop());
      default:
        return MaterialPageRoute(builder: (_)=>const Scaffold(
          body: Center(
            child: Text("No Page Available"),
          ),
        ));
    }
  }
}