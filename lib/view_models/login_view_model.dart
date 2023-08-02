import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:aircraft_inventory_management/models/user.dart';
import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:aircraft_inventory_management/utils/dialogs/error_dialog.dart';
import 'package:aircraft_inventory_management/utils/email_validation.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/utils/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../data/local/shared_preference_manager.dart';
import '../../dependency_injection/di.dart';

class LoginViewModel with ChangeNotifier{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isobsecured=true;
  bool isloading=false;
  AuthRepository authRepository = sl.get();
  SharedPreferenceManager sharedPreferenceManager = sl.get<SharedPreferenceManager>();

  changeIsObsecured(){
    isobsecured = !isobsecured;
    notifyListeners();
  }

  login({
    required BuildContext context
  })async{


    if(!EmailValidator.validate(emailController.text.trim())){
      showSimpleErrorDialog(context, 'Invalid Email Format');
      return;
    }
    if(passwordController.text.trim().isEmpty){
      showSimpleErrorDialog(context, 'Password field must not be empty');
      return;
    }
    isloading=true;
    notifyListeners();

    var result = await authRepository.login(emailController.text.trim(), passwordController.text.trim());

    if(result is Failure){
      var error = result.error as Map;
      isloading=false;
      notifyListeners();
      showSimpleErrorDialog(context, error['error']);

    }else if (result is Success){
      User user = User.fromJson(result.data);
      await sharedPreferenceManager.setAccessToken(user.access!);

      Navigator.of(context).pushNamedAndRemoveUntil(RouteNames.baseview, (route) => false);
      isloading=false;
      notifyListeners();
    }


  }

  void navigateToSignup(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, RouteNames.signup, (route) => false);
  }


}