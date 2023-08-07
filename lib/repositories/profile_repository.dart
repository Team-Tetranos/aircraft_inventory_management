import 'package:flutter/material.dart';

import '../data/local/hive_manager.dart';
import '../data/local/shared_preference_manager.dart';
import '../data/remote/responses/api_response.dart';
import '../data/remote/service/base_api_service.dart';
import '../data/remote/service/network_api_service.dart';
import '../dependency_injection/di.dart';
import '../models/user.dart';
import '../res/endpoints.dart';


class ProfileRepository{
  BaseApiService apiService = sl.get<ApiService>();
  EndPoints endPoints = sl.get<EndPoints>();
  SharedPreferenceManager sharedPreferenceManager = sl.get<SharedPreferenceManager>();
  HiveManager hiveManager = sl.get<HiveManager>();
  Future<Object> allProfile()async{
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.all_profile, token: true);
    if(response is Failure){

    }else if (response is Success){
      List<User> all_profiles = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {
        print(element);
        all_profiles.add(User.fromJson(element));
      }
      response = all_profiles;
    }

    return response;

  }

  Future<Object> updateProfile(User profile) async{
    print(profile.toJson());
    var response = await apiService.postApiResponse('${endPoints.base_url}${endPoints.profile_detail}${profile.id}/',profile.toJson(), token: true);
    if(response is Failure){

    }else if (response is Success){
      User user = User.fromJson(response.data as Map<String, dynamic>);
      response = user;
    }

    return response;
  }

  Future<Object> verifyProfile(User profil) async{
    var response = await apiService.getApiResponse('${endPoints.base_url}${endPoints.verify_profile}${profil.id}/', token: true);
    if(response is Failure){

    }else if(response is Success){
      User user = User.fromJson(response.data as Map<String, dynamic>);
      response = user;
    }

    return response;
  }


}