import 'dart:io';

import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:aircraft_inventory_management/utils/dialogs/error_dialog.dart';
import 'package:aircraft_inventory_management/utils/dialogs/success_dialog.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../dependency_injection/di.dart';
import '../models/stock_record.dart';
import '../models/user.dart';

class DashboardViewModel extends ChangeNotifier{
  AircraftRepository aircraftRepository = sl.get<AircraftRepository>();
  TextEditingController aircraft_name_controller = TextEditingController();
  TextEditingController aircraft_id_controller = TextEditingController();
  HiveManager hiveManager = sl.get();
  ImagePicker imagePicker = ImagePicker();
  bool dragEntered = false;
  int? pickedIndex;
  User user = sl.get();

  navigateTosubPage(BuildContext context, String page){
    Provider.of<BaseViewModel>(context, listen: false).changingOptions(context,page);
  }

  List<Category> initialAircraft =[];
  List<Category> aircrafts = [];
  List<Aircraftitem> aircraftItems = [];

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
  updateDragEntered(bool b){
    dragEntered = b;
    notifyListeners();
  }



  addCategory(BuildContext context)async{

    if(aircraft_name_controller.text.isEmpty){
      showSimpleErrorDialog(context, 'Aircraft Name must be provided');
      return;
    }

    if(aircraft_id_controller.text.isEmpty){
      showSimpleErrorDialog(context, 'Aircraft id must be provided');
      return;
    }

    if(pickedImage==null){
      showSimpleErrorDialog(context, 'Image must be provided');
      return;
    }

    Object result = await aircraftRepository.addCategory(aircraft_name_controller.text.trim(), aircraft_id_controller.text.trim(), image: pickedImage);

    print(result.runtimeType);
    if(result is Category){
      showSuccessDialog(context, 'New Aircraft Created');
      aircraft_name_controller.clear();
      aircraft_id_controller.clear();
      pickedImage = null;
      fetchAllAircrafts();
      notifyListeners();
    }else{
      showSimpleErrorDialog(context, 'Server Error');
    }
  }

  fetchAllAircrafts()async{

    EasyLoading.show();

    initialAircraft = [];
    aircrafts = [];
    notifyListeners();

    var response = await aircraftRepository.allAircrafts();

    print(response.runtimeType);
    if(response is List<Category>){
      initialAircraft = response;
      aircrafts = initialAircraft;
      //print(aircrafts);
      notifyListeners();
    }else{
      print('Error occured');
    }

    EasyLoading.dismiss();

  }


  pickAircraft(BuildContext context,int index){
    try{
      Provider.of<BaseViewModel>(context, listen: false).updatePickedAircraft(aircrafts[index]);
      Provider.of<BaseViewModel>(context, listen: false).changingOptions(context, 'inventory');
      pickedIndex = index;
      notifyListeners();
    }catch(e){
    }

  }

  void filterAircraft(String s) {
    try{
      aircrafts = initialAircraft.where((element) => element.name!.toLowerCase().contains(s.toLowerCase())).toList();
      notifyListeners();
    }catch(e){
      print(e);
    }
  }


  setupUserData(BuildContext context)async{

    try{
      var usr = await hiveManager.getUserData();
      user = usr!;
      notifyListeners();
    }catch(e){
      print(e);
    }

  }

  onInit(BuildContext context)async{
    setupUserData(context);
    await fetchAllAircrafts();
    await fetchNotifications(context);
  }




  fetchNotifications(BuildContext context)async{

    EasyLoading.show();
    try{
      var result = await aircraftRepository.getStockNotification();
      if(result is List<StockRecord>){
        Provider.of<BaseViewModel>(context, listen: false).updateNotifications(result);

        notifyListeners();
      }
    }catch(e){

    }

    EasyLoading.dismiss();

  }


}