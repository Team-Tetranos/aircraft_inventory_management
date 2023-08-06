import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;
import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../dependency_injection/di.dart';
import '../utils/dialogs/error_dialog.dart';
import '../utils/dialogs/success_dialog.dart';

class MyProviderForInventoryView with ChangeNotifier {
  bool isLoading = true;
  AircraftRepository aircraftRepository = sl.get<AircraftRepository>();
  ct.Category? acft;
  TextEditingController cardController = TextEditingController();
  TextEditingController partController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  TextEditingController partNo = TextEditingController();
  TextEditingController nomenclature = TextEditingController();
  TextEditingController astronomical_unit = TextEditingController();
  TextEditingController card_no = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController received_di_org = TextEditingController();
  TextEditingController manufacturer = TextEditingController();
  TextEditingController expire = TextEditingController();
  TextEditingController expenditure = TextEditingController();
  TextEditingController rmk = TextEditingController();
  TextEditingController aircraft = TextEditingController();

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
    aircraft.text = af.name!;
    aircraft_id = af.id;
    notifyListeners();
  }

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      expire.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }


  addAircraftItem(BuildContext context)async{

    Aircraftitem aircraftitem = Aircraftitem(
      partNo: partNo.text.trim(),
      nomenclature: nomenclature.text.trim(),
      astronomicalUnit: astronomical_unit.text.trim(),
      cardNo: card_no.text.trim(),
      quantity: quantity.text.trim(),
      receivedDiOrg: received_di_org.text.trim(),
      manufacturer: manufacturer.text.trim(),
      expire: expire.text.trim(),
      expenditure: expenditure.text.trim(),
      rmk: rmk.text.trim(),
      aircraft: aircraft_id,
    );

    Object result = await aircraftRepository.addAircraftItem(aircraftitem);

    print(result.runtimeType);
    if(result is Aircraftitem){
      showSuccessDialog(context, 'New Aircraft Item Created');
      partNo.clear();
      nomenclature.clear();
      astronomical_unit.clear();
      card_no.clear();
      quantity.clear();
      received_di_org.clear();
      expenditure.clear();
      expire.clear();
      rmk.clear();
      manufacturer.clear();
      await Provider.of<DashboardViewModel>(context, listen: false).fetchAllAircraftItems();
      updateAircraftItemsForInventory(context);
      notifyListeners();
    }else{
      showSimpleErrorDialog(context, 'Server Error');
    }
  }

  aircraftFiltering(String type, String s){
    if(type=='part'){
      duplicateaircraftItemsForInventory = aircraftItemsForInventory.where((element) => element.partNo!.toLowerCase().contains(s.toLowerCase())).toList();
    }else if(type=='card'){
      duplicateaircraftItemsForInventory = aircraftItemsForInventory.where((element) => element.cardNo!.toLowerCase().contains(s.toLowerCase())).toList();
    }else if(type=='quantity'){
      duplicateaircraftItemsForInventory = aircraftItemsForInventory.where((element) => element.quantity!.toLowerCase().contains(s.toLowerCase())).toList();
    }
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