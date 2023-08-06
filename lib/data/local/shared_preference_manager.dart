import 'package:shared_preferences/shared_preferences.dart';

import '../../dependency_injection/di.dart';

class SharedPreferenceManager{
  String accessToken = "accessToken";
  String userEmail = "userEmail";
  String isAdmin = 'isAdmin';
  final SharedPreferences sharedPreferences = sl.get<SharedPreferences>();

  String? getAccessToken(){
    return sharedPreferences.getString(accessToken);
  }
  Future<bool> setAccessToken(String acToken)async{
    return await sharedPreferences.setString(accessToken, acToken);
  }
  Future<bool> removeAccessToken()async{
    return await sharedPreferences.remove(accessToken);
  }

  String? getUserEmail(){
    return sharedPreferences.getString(userEmail);
  }
  Future<bool> setUserEmail(String acToken)async{
    return await sharedPreferences.setString(userEmail, acToken);
  }
  Future<bool> removeUserEmail()async{
    return await sharedPreferences.remove(userEmail);
  }

  bool? getIsAdmin(){
    return sharedPreferences.getBool(isAdmin);
  }
  Future<bool> setIsAdmin(bool acToken)async{
    return await sharedPreferences.setBool(isAdmin, acToken);
  }
  Future<bool> removeIsAdmin()async{
    return await sharedPreferences.remove(isAdmin);
  }

}