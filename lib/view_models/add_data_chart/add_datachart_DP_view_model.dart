import 'dart:ffi';

import 'package:aircraft_inventory_management/models/DemandModel.dart';
import 'package:aircraft_inventory_management/models/database.dart';
import 'package:aircraft_inventory_management/repositories/database_reposittory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';

import '../../data/local/hive_manager.dart';
import '../../data/remote/responses/api_response.dart';
import '../../dependency_injection/di.dart';
import '../../models/user.dart';
import '../../utils/snackbars/failure_snackbar.dart';
import '../../utils/snackbars/input_field_error_snackbar.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;

import '../../utils/snackbars/success_snackbar.dart';

class Add_DP_View_Model extends ChangeNotifier{
  TextEditingController demandnumberDP=TextEditingController();
  TextEditingController demanddateDP=TextEditingController();
  TextEditingController nomenclatureDP =TextEditingController();
  TextEditingController demandunitDP= TextEditingController();
  TextEditingController demandquantityDP = TextEditingController();
  TextEditingController receivedDP = TextEditingController();
  TextEditingController rmkDP =TextEditingController();
  ct.Category? acft;
  HiveManager hiveManager = sl.get<HiveManager>();
  DataBaseRepository databaserepo =sl.get<DataBaseRepository>();
  String demandtype="DP";
  initializeDPtype(String st){
    demandtype=st;
    notifyListeners();
  }

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      demanddateDP.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }
  initiateAircraftItem(ct.Category af){
    acft = af;

    notifyListeners();
  }
  onInit(BuildContext context, ct.Category ct)async{

    initiateAircraftItem(ct);


  }
  String? selectedUnit = 'No.';
  List<String> DPunits = [
    'No.',
    'Pcs',
    'Kg',
    'Meter',
    'Litre',
    'Set',
    'EA'
  ];
 selectedUnitForDP(String history){
    selectedUnit = history;
    notifyListeners();
  }
  add_data_record(BuildContext context)async{
   print(acft?.id.toString());

    if(demandnumberDP.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Demand Number');
      return;
    }
     if(demandquantityDP.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Demand Quantity');
      return;
    }
     if(receivedDP.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Received Number');
      return;
    }
      if(nomenclatureDP.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Nomenclature');
      return;
    } if(rmkDP.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'RMK');
      return;
    }if(demanddateDP.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'date');
      return;
    }


      print("chocho");
      EasyLoading.show();

      try{

        User? user = await hiveManager.getUserData();
        Map<String, dynamic> data = {
          'demand_no':demandnumberDP.text.trim(),
          'date':demanddateDP.text.trim(),
          'aircraft':acft!.id!,
          'description':nomenclatureDP.text.trim(),
          'created_by':user!.id,
          'unit':selectedUnit,
          'demand_quantity':demandquantityDP.text.trim(),
          'received':receivedDP.text.trim(),
          'demand_type': demandtype,
        };
        notifyListeners();

        var result = await databaserepo.addtoDatabase(data);
        notifyListeners();

        if(result is DemandModel){

          successSnackbar(context: context, message: 'Successfully created demand dtabase');

        }else if(result is Failure){
          failedSnackbar(context: context, message: '${result.error}');
        }
        print(result.toString());

      }catch(e){
        failedSnackbar(context: context, message: '$e');
        print(e.toString());
      }
      notifyListeners();
      EasyLoading.dismiss();

  }


}