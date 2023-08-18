import 'package:aircraft_inventory_management/models/helpandsupportmodel.dart';
import 'package:aircraft_inventory_management/repositories/help_and_support_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../dependency_injection/di.dart';

class HelpAndSupportViewModel extends ChangeNotifier{

  HelpAndSupportRepository helpAndSupportRepository = sl.get();

    List<HelpAndSupportModel> helps = [];

    fetchhelps()async{
      EasyLoading.show();
      try{
        var response = await helpAndSupportRepository.gethelpsupport();
        if(response is List<HelpAndSupportModel>){
          helps = response;
          notifyListeners();
        }
      }catch(e){

      }
      EasyLoading.dismiss();
    }

}

