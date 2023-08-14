

import 'dart:io';

import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/models/user.dart';
import 'package:aircraft_inventory_management/repositories/profile_repository.dart';
import 'package:aircraft_inventory_management/utils/snackbars/failure_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';

import '../dependency_injection/di.dart';

class SettingsViewModel with ChangeNotifier{
  User user = User();
  HiveManager hiveManager = sl.get();
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
  ImagePicker imagePicker = ImagePicker();
  ProfileRepository profileRepository = sl.get();

File? pickedImage;
pickImage()async{
  var image = await imagePicker.pickImage(source: ImageSource.gallery);
  updatePickedImage(image);
  print(image!.path);
}
updatePickedImage(XFile? first) {
  if(first!=null){
    pickedImage =File(first.path);
    notifyListeners();
  }
}


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


  fetchUserlocally()async{

  user = (await hiveManager.getUserData())!;
  fullname.text = user.first_name??'';
  username.text = user.last_name??'';
  email.text = user.email??'';
  phonenumber.text = user.phone??'';

  notifyListeners();

}

void onInit(BuildContext context) {

fetchUserlocally();

}

  void deleteImage() {
  pickedImage=null;
  notifyListeners();
  }

  void updateProfile(BuildContext context) async{

      EasyLoading.show();
      try{
        var data = {
          'first_name':fullname.text.trim(),
          'last_name':username.text.trim(),
          'phone':phonenumber.text.trim()
        };

        var response = await profileRepository.updateProfileInfo(user, data, image: pickedImage);

        if(response is User){
          await hiveManager.addUserData(response);
          user = (await hiveManager.getUserData())!;
          notifyListeners();
        }else{
          failedSnackbar(context: context, message: 'Failed to update profile');
        }


      }catch(e){

      }

      EasyLoading.dismiss();

  }





}