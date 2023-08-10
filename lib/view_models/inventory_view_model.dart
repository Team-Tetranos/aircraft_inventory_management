import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../data/local/hive_manager.dart';
import '../dependency_injection/di.dart';
import '../utils/dialogs/error_dialog.dart';
import '../utils/dialogs/success_dialog.dart';
import '../utils/snackbars/input_field_error_snackbar.dart';

class MyProviderForInventoryView with ChangeNotifier {
  bool isLoading = true;
  AircraftRepository aircraftRepository = sl.get<AircraftRepository>();
  HiveManager hiveManager = sl.get<HiveManager>();
  ct.Category? acft;


  List<Aircraftitem> aircraftItemsForInventory = [];
  List<Aircraftitem> duplicateaircraftItemsForInventory = [];

  DateTimeRange? pickedRange;

  updateAircraftItemsForInventory(BuildContext context){
    aircraftItemsForInventory = [];
    ct.Category? aircraft = Provider.of<BaseViewModel>(context, listen: false).pickedAircraft;
    List<Aircraftitem> items = Provider.of<DashboardViewModel>(context, listen: false).aircraftItems;
    try{
      if(aircraft!=null){
        acft = aircraft;
        aircraftItemsForInventory = items.where((element) => element.aircraft==aircraft.id).toList();
        duplicateaircraftItemsForInventory = aircraftItemsForInventory;
      }
    }catch(e){
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }



  DateTime? pickedDate;
  String? aircraft_id;


  int InventoryItemIndex=0;
  void ChangingBooleanValue(int myindex){
    InventoryItemIndex=myindex;
    notifyListeners();
  }

  Aircraftitem newAircraftitemToadd = Aircraftitem();

  initiateAircraftItem(ct.Category af){
    acft = af;
    notifyListeners();
  }






  void selectExpireDateRange(BuildContext context) async{
    final DateTimeRange? picked = await showDateRangePicker(
      initialDateRange: pickedRange,

      context: context,
      firstDate: DateTime(1970),
      lastDate: DateTime(2070),
    );

    if(picked!=null){
      pickedRange=picked;
      DateTime first = picked.start;
      DateTime last = picked.end;
      String firstDate = dateToString(first);
      String lastDate = dateToString(last);
      duplicateaircraftItemsForInventory = aircraftItemsForInventory.where((element) => stringToDate(element.expire).compareTo(firstDate)>=0 && stringToDate(element.expire).compareTo(lastDate)<=0).toList();
      notifyListeners();
    }
  }

  clearDateRange(){
    pickedRange=null;
    duplicateaircraftItemsForInventory = aircraftItemsForInventory;
    notifyListeners();
  }

  void onSelectRow(BuildContext context, int index) {
    Provider.of<BaseViewModel>(context, listen: false).changingOptions(context, 'item_details');
    Provider.of<BaseViewModel>(context, listen: false).updatePickedAircraftItem(context, aircraftItemsForInventory[index], 'item_details');
  }






}