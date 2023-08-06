
import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../data/local/shared_preference_manager.dart';
import '../data/remote/responses/api_response.dart';
import '../dependency_injection/di.dart';
import '../models/user.dart';
import '../utils/dialogs/error_dialog.dart';
import '../utils/routes/route_names.dart';

class OtpViewModel extends ChangeNotifier{
  bool isloading=false;


  AuthRepository authRepository = sl.get<AuthRepository>();
  SharedPreferenceManager sharedPreferenceManager = sl.get<SharedPreferenceManager>();

  String otp_code = "";

  updateOtpCode(String s){
    otp_code = s;
    print(otp_code);
    notifyListeners();
  }

  verifyOtp(BuildContext context, Object data)async{

    if(data is Map){
      if(data['reason']=='sign_up'){
        await signUpSuccess(context, data);
      }else if(data['reason']=='forgot_password'){
        await forgotPasswordOtpVerify(context, data);
      }

    }
    print(data);

  }


  signUpSuccess(BuildContext context, Map data)async{
    isloading=true;
    notifyListeners();
    var result = await authRepository.signUp(data['email'], data['password'], otp_code);
    if(result is Failure){
      var error = result.error as Map;
      print(error);

      showSimpleErrorDialog(context, error['error']);
      isloading=false;
      notifyListeners();
    }else if (result is Success){
      User user = User.fromJson(result.data as Map<String, dynamic>);
      await sharedPreferenceManager.setAccessToken(user.access!);

      Navigator.of(context).pushNamedAndRemoveUntil(RouteNames.baseview, (route) => false);
      isloading=false;
      notifyListeners();
    }
  }

  forgotPasswordOtpVerify(BuildContext context, Map data) async{
    isloading=true;
    notifyListeners();
    var result = await authRepository.verifyOtp(data['email'], otp_code);
    if(result is Failure){
      var error = result.error as Map;
      print(error);
      showSimpleErrorDialog(context, error['error']);
      isloading=false;
      notifyListeners();
    }else if (result is Success){

      Navigator.of(context).pushReplacementNamed(RouteNames.creatnewpasword, arguments: {
        'email':data['email']
      });
      isloading=false;
      notifyListeners();

    }
  }



}