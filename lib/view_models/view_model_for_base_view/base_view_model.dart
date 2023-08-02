import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../dependency_injection/di.dart';
import '../../models/category.dart';
import '../../utils/dialogs/confirmation_dialog.dart';

class BaseViewModel extends ChangeNotifier{
  AuthRepository authRepository = sl.get();
  String baseviewPage='dashboard';
  Category? pickedAircraft;

  changingOptions(BuildContext context,String page){
    baseviewPage=page;
    if(page=='dashboard'){
      pickedAircraft=null;
      try{
        Provider.of<DashboardViewModel>(context, listen: false).pickedIndex=null;
        Provider.of<DashboardViewModel>(context, listen: false).notifyListeners();
      }catch(e){

      }
    }
    notifyListeners();
  }

  Future logout(BuildContext context)async{
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


}