import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';

import '../data/remote/responses/api_response.dart';
import '../dependency_injection/di.dart';
import '../repositories/auth_repository.dart';
import '../utils/dialogs/error_dialog.dart';
import '../utils/email_validation.dart';

class CreateNewPasswordViewModel extends ChangeNotifier{
  bool isObsecureforEntryPasword=true;
  bool isObsecureforConfirmPassword=true;
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  AuthRepository authRepository = sl.get<AuthRepository>();

  changingboolforentry(){

    isObsecureforEntryPasword=!isObsecureforEntryPasword;
    notifyListeners();
  }
  changingboolforconfirm(){

    isObsecureforConfirmPassword=!isObsecureforConfirmPassword;
    notifyListeners();
  }

  resetPassword(BuildContext context, Map data)async{

    if(password.text.trim().isEmpty){
      showSimpleErrorDialog(context, 'Password field must not be empty');
      return;
    }
    if(password.text.trim()!=confirmPassword.text.trim()){
      showSimpleErrorDialog(context, 'Confirm password does not match');
      return;
    }

    var result = await authRepository.resetPassword(data['email'], password.text.trim());

    if(result is Success){
      Navigator.of(context).pushNamedAndRemoveUntil(RouteNames.login, (route) => false);

    }else if(result is Failure){
      var error = result.error as Map;
      showSimpleErrorDialog(context, error['error']);
    }
  }


}