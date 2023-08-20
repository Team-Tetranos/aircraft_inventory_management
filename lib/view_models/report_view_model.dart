import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import '../dependency_injection/di.dart';
import '../models/stock_record.dart';
import '../models/stock_record_report.dart';
import 'inventory_view_model.dart';

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



  void processReportTap(BuildContext context, StockRecord notificaiton) {

    print('comming to here');
    print(notificaiton.aircraft);
    try{
      var base = Provider.of<BaseViewModel>(context, listen: false);
      base.updatePickedAircraft(notificaiton.aircraft!);
      base.changingOptions(context, 'inventory');
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

  void onSelectRow(BuildContext context, int index) {
    /*print('tapped');
    StockRecordReport stockRecordReport = reports[index];
    ct.Category aircraft = ct.Category();
    try{

      aircraft = Provider.of<DashboardViewModel>(context, listen: false).aircrafts.firstWhere((element) => element.id==stockRecordReport.aircraft);

    }catch(e){

    }
    StockRecord stockRecord = StockRecord(
        id: stockRecordReport.id,
        card_no: stockRecordReport.card_no,
        stock_no: stockRecordReport.stock_no,
        description: stockRecordReport.description,
        date: stockRecordReport.date,
      location: stockRecordReport.location,
      image: stockRecordReport.image,
      unit: stockRecordReport.unit,
      created_at: stockRecordReport.created_at,
      aircraft: aircraft,
    );
    processReportTap(context, stockRecord);*/
  }

}