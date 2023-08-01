import 'dart:io';

import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class DashboardViewModel extends ChangeNotifier{

  ImagePicker imagePicker = ImagePicker();
  navigateTosubPage(BuildContext context, String page){
    Provider.of<BaseViewModel>(context, listen: false).changingOptions(page);
  }
  File? pickedImage;

  pickImage()async{
    var image = await imagePicker.pickImage(source: ImageSource.gallery);
    print(image!.path);
  }


}