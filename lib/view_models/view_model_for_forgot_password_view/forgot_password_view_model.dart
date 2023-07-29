import 'package:flutter/material.dart';

class ForgotPassWord extends ChangeNotifier{
  bool isObsecureforEntryPasword=true;
  bool isObsecureforConfirmPassword=true;

  changingboolforentry(bool boolean){
    boolean=!boolean;
    isObsecureforEntryPasword=boolean;
    notifyListeners();
  }
  changingboolforconfirm(bool boolean){
    boolean=!boolean;
    isObsecureforConfirmPassword=boolean;
    notifyListeners();
  }
}