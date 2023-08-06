import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/data/local/shared_preference_manager.dart';
import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:aircraft_inventory_management/data/remote/service/base_api_service.dart';
import 'package:aircraft_inventory_management/data/remote/service/network_api_service.dart';
import 'package:aircraft_inventory_management/res/endpoints.dart';
import 'package:aircraft_inventory_management/utils/dialogs/confirmation_dialog.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/cupertino.dart';

import '../dependency_injection/di.dart';
import '../models/user.dart';


class AuthRepository{
  BaseApiService apiService = sl.get<ApiService>();
  EndPoints endPoints = sl.get<EndPoints>();
  SharedPreferenceManager sharedPreferenceManager = sl.get<SharedPreferenceManager>();
  HiveManager hiveManager = sl.get<HiveManager>();
  Future<Object> login(String email, String password)async{
    var data = {
      'email':email,
      'password':password
    };
    var response = await apiService.postApiResponse(endPoints.base_url+endPoints.login, data);
    if(response is Failure){


    }else if (response is Success){
      User user = User.fromJson(response.data as Map<String, dynamic>);
      print(response.data);
      print(user.email);
      //print(user.isAdmin);
      await sharedPreferenceManager.setAccessToken(user.access!);
      await hiveManager.addUserData(user);

    }

    return response;

  }

  Future<Object> signUp(String email, String password, String otp)async{
    var data = {
      'email':email,
      'password':password,
      'otp':otp
    };
    var response = await apiService.postApiResponse(endPoints.base_url+endPoints.signup, data);
    if(response is Failure){
      print(response.error);
      print(response.code);
    }
    return response;
  }


  Future logout(BuildContext context)async{
    confirmDialog(context, 'Logout', 'Are you sure you want to logout?', ()async{
      await sharedPreferenceManager.removeAccessToken();
      Navigator.of(context).pop();
      Navigator.of(context).pushNamedAndRemoveUntil(RouteNames.login, (route) => false);
    }, (){
      Navigator.of(context).pop();
    });
  }


  Future<Object> send_otp(String email, String reason, String exist_mail)async{
    var data = {
      'email':email,
      'reason':reason,
      'exist_mail':exist_mail
    };
    var response = await apiService.postApiResponse(endPoints.base_url+endPoints.send_otp, data);
    return response;
  }

  Future<Object> verifyOtp(String email, String otp_code) async{
    var data = {
      'email':email,
      'otp':otp_code
    };
    var response = await apiService.postApiResponse(endPoints.base_url+endPoints.verify_otp, data);
    return response;
  }

  Future<Object> resetPassword(String email, String password)async{
    var data = {
      'email':email,
      'password':password
    };
    var response = await apiService.postApiResponse(endPoints.base_url+endPoints.reset_password, data);
    return response;
  }
}