import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/data/local/shared_preference_manager.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import '../../dependency_injection/di.dart';
import '../../models/category.dart';

import '../../models/user.dart';
import '../../repositories/aircraft_repository.dart';
import '../../utils/dialogs/confirmation_dialog.dart';

class BaseViewModel extends ChangeNotifier{
  AuthRepository authRepository = sl.get();
  HiveManager hiveManager = sl.get();
  AircraftRepository aircraftRepository = sl.get();
  SharedPreferenceManager sharedPreferenceManager = sl.get();


  List<StockRecord> notifications = [];

  updateNotifications(List<StockRecord> notifi){
    notifications = notifi;
    notifyListeners();
  }
  User user= sl.get();

  String baseviewPage='dashboard';
  Category? pickedAircraft;
  Aircraftitem? pickedAircraftItem;



  changingOptions(BuildContext context,String page){
    baseviewPage=page;
    if(page=='dashboard'){
      pickedAircraft=null;
      pickedAircraftItem=null;
      try{
        Provider.of<DashboardViewModel>(context, listen: false).pickedIndex=null;
        Provider.of<DashboardViewModel>(context, listen: false).notifyListeners();
      }catch(e){

      }
    }
    notifyListeners();
  }

  Future logout(BuildContext context)async{
    baseviewPage = 'dashboard';
    notifyListeners();
    await authRepository.logout(context);
  }

  closeAppDialog(BuildContext context){

    confirmDialog(context, 'Close', 'Are you sure you want to close?', ()async{
      SystemNavigator.pop();
    }, (){
      Navigator.of(context).pop();
    });

  }

  void updatePickedAircraft(Category aircraft) {
    pickedAircraft = aircraft;
    notifyListeners();
  }

  void updatePickedAircraftItem(BuildContext context, Aircraftitem aircraftItem, String page) {
    changingOptions(context, page);
    pickedAircraftItem = aircraftItem;
    notifyListeners();
  }

  setupUserData()async{
    try{
      var usr = await hiveManager.getUserData();
      user = usr!;
      //print(usr!.is_admin);

      notifyListeners();
    }catch(e){
      print(e);
    }
    //notifyListeners();
  }

  onInit()async{
    await setupUserData();
  }

  void filterAircraft(BuildContext context, String s) {
    try{
      Provider.of<DashboardViewModel>(context, listen: false).filterAircraft(s);
    }catch(e){
      print(e);
    }
  }

  void processNotificationTap(BuildContext context, StockRecord notificaiton) {

    try{
      updatePickedAircraft(notificaiton.aircraft!);
      changingOptions(context, 'inventory');
      try{

        var mp = Provider.of<MyProviderForInventoryView>(context,listen: false);
        mp.updateSelectedStockRecord(notificaiton);
        mp.updateOnTimePass(true);


      }catch(e){
        print(e);
      }
    }catch(e){
      print(e);
    }



  }





}