import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../dependency_injection/di.dart';
import '../../utils/dialogs/confirmation_dialog.dart';

class BaseViewModel extends ChangeNotifier{
  AuthRepository authRepository = sl.get();
  int baseviewIndex=0;

  changingOptions(int myIndex){
    baseviewIndex=myIndex;
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


}