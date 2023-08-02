
import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../data/remote/responses/api_response.dart';
import '../dependency_injection/di.dart';
import '../utils/dialogs/error_dialog.dart';
import '../utils/email_validation.dart';
import '../utils/routes/route_names.dart';

class ResetPasswordViewModel extends ChangeNotifier{
  bool isloading=false;

  AuthRepository authRepository = sl.get<AuthRepository>();

  TextEditingController emailController = TextEditingController();

  void send_otp(BuildContext context) async{
    if(!EmailValidator.validate(emailController.text.trim())){
      showSimpleErrorDialog(context, 'Invalid Email Format');
      return;
    }
    isloading=true;
    notifyListeners();
    var result = await authRepository.send_otp(emailController.text.trim(), 'forgot_password', 'TRUE');
    if(result is Success){
      Navigator.of(context).pushNamed(RouteNames.otpview,arguments: <String, dynamic>{
        'reason':'forgot_password',
        'email':emailController.text.trim()
      });
      isloading=false;
      notifyListeners();
    }else if(result is Failure){
      var error = result.error as Map;
      isloading=false;
      notifyListeners();
      showSimpleErrorDialog(context, error['error']);
    }

  }


}