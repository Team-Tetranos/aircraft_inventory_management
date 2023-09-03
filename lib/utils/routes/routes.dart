
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/view_models/datachart_details_view_model/datachart_details_DP_view_model.dart';
import 'package:aircraft_inventory_management/view_models/update_datachart/update_datachart_DP_view_model.dart';
import 'package:aircraft_inventory_management/view_models/update_datachart/update_datachart_LP_view_model.dart';
import 'package:aircraft_inventory_management/views/add_datachart/add_datachart_DP.dart';
import 'package:aircraft_inventory_management/views/add_datachart/add_datachart_LP.dart';
import 'package:aircraft_inventory_management/views/base_view/base_view.dart';
import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_view.dart';
import 'package:aircraft_inventory_management/views/database_chart_view/database_chart_view_for_DP.dart';
import 'package:aircraft_inventory_management/views/database_view/database_view.dart';
import 'package:aircraft_inventory_management/views/datachart_details/datachart_details_DP_view.dart';
import 'package:aircraft_inventory_management/views/datachart_details/datachart_details_LP_view.dart';

import 'package:aircraft_inventory_management/views/forgot_password_view/create_new_password/creat_new_password_view.dart';
import 'package:aircraft_inventory_management/views/onboarding_screen/onboarding_screen.dart';
import 'package:aircraft_inventory_management/views/otp_view/otp_view.dart';
import 'package:aircraft_inventory_management/views/inventory_view/inventory_view_desktop.dart';
import 'package:aircraft_inventory_management/views/login_view/login_view.dart';
import 'package:aircraft_inventory_management/views/signup_view/sign_up_view.dart';
import 'package:aircraft_inventory_management/views/signup_view/signup_view_desktop.dart';
import 'package:aircraft_inventory_management/views/update_datacgart/update_datachart_DP_view.dart';
import 'package:aircraft_inventory_management/views/update_datacgart/update_datachart_LP_view.dart';
import 'package:flutter/material.dart';

import '../../views/Blank_Page/blank_page.dart';
import '../../views/dashboard_view/dashboard_view_tablet.dart';
import '../../views/database_chart_view/database_chart_view_for_LP.dart';
import '../../views/forgot_password_view/reset_password/reset_password_view.dart';
import '../../views/onboarding_screen/onboard_second_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings routeSettings){

    var args = routeSettings.arguments;

    switch(routeSettings.name){
      case RouteNames.updateDP:
        return MaterialPageRoute(builder: (_)=>Update_DataChart_DP());
      case RouteNames.detailsDP:
        return MaterialPageRoute(builder: (_)=>DataChart_Details_DP_view());
      case RouteNames.detailsLP:
        return MaterialPageRoute(builder: (_)=>DataChart_details_LP_View());

      case RouteNames.updateLP:
        return MaterialPageRoute(builder: (_)=>Update_DataChart_LP());
      case RouteNames.adddatachartLP:
        return MaterialPageRoute(builder: (_)=>Add_DataChart_LP());
      case RouteNames.adddatachartDP:
        return MaterialPageRoute(builder: (_)=>Add_DataChart_DP());
      case RouteNames.datachartLP:
        return MaterialPageRoute(builder: (_)=>DataBase_Chart_View_For_LP());
      case RouteNames.datachartDP:
        return MaterialPageRoute(builder: (_)=>DataBase_Chart_View_For_DP());
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_)=> OnboardingView());
      case RouteNames.database:
        return MaterialPageRoute(builder: (_)=>DataBaseView());
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