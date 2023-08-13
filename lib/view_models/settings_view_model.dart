

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class SettingsViewModel with ChangeNotifier{
TextEditingController fullname= TextEditingController();
TextEditingController username= TextEditingController();
TextEditingController password= TextEditingController();
TextEditingController confirmpassword= TextEditingController();
TextEditingController phonenumber= TextEditingController();
TextEditingController additionalnumber= TextEditingController();
TextEditingController email= TextEditingController();
TextEditingController additionalemail= TextEditingController();
bool isobscuredforpassword=true;
bool isobscuredforconfirmpassword=true;
bool isobscuredfornumber=true;
bool isobscuredforadditionalnumber=true;


 changingObsecurepassdbool(){
isobscuredforpassword= !isobscuredforpassword;

 notifyListeners();
}

changingObsecurepassconfirmdbool(){
  isobscuredforconfirmpassword = !isobscuredforconfirmpassword;


  notifyListeners();
}
changingObsecurenumberbool(){
   isobscuredfornumber=!isobscuredfornumber;
   notifyListeners();
}

changingObsecureaddintionalnumber(){
   isobscuredforadditionalnumber=!isobscuredforadditionalnumber;
   notifyListeners();
}

}