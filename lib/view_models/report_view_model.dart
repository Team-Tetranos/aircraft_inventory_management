import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../dependency_injection/di.dart';
import '../models/stock_record_report.dart';

class ReportViewModel extends ChangeNotifier{

  AircraftRepository aircraftRepository = sl.get();

  List<ct.Category> aircrafts = [];

  List<StockRecordReport> reports = [];
  List<StockRecordReport> duplicatereports = [];
  bool loading = false;

  changeLoading(bool b){
      loading = b;
      notifyListeners();
  }

  ct.Category? selectedAircraft;

  updateSelectedAircraft(ct.Category a){
    selectedAircraft = a;
    filterReport();
    notifyListeners();
  }

  filterReport(){
    if(selectedAircraft==null||selectedAircraft!.id==null){
      duplicatereports = reports;
    }else{
      duplicatereports = reports.where((element) => element.aircraft==selectedAircraft!.id).toList();
    }
    notifyListeners();
  }


  fetchAircrafts()async{
    selectedAircraft=null;
    print('fetching is called');

    EasyLoading.show();

    changeLoading(true);

    try{
      var response = await aircraftRepository.allAircrafts();

      if(response is List<ct.Category>){
        aircrafts = [ct.Category()];
        aircrafts.addAll(response);
        print(aircrafts.length);
        notifyListeners();
      }
    }catch(e){
    }
    changeLoading(false);
    EasyLoading.dismiss();

  }

  fetchReports()async{
    EasyLoading.show();
    changeLoading(true);

    try{
      var response = await aircraftRepository.getStockRecordReport();

      if(response is List<StockRecordReport>){
        reports =response;
        duplicatereports = reports;
        notifyListeners();
      }
    }catch(e){


    }
    changeLoading(false);
    EasyLoading.dismiss();
  }

}