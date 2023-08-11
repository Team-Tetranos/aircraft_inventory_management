
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/stock_history.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/utils/snackbars/failure_snackbar.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import '../dependency_injection/di.dart';

class SingleItemViewModel extends ChangeNotifier{

  bool isLoading = true;

  StockRecord stockRecord = StockRecord();
  List<StockHistory> stockHistory = [];
  AircraftRepository aircraftRepository = sl.get();

  changeLoading(bool b){
    isLoading = b;
    notifyListeners();
  }

  setupStockRecord(BuildContext context){
    try{
      stockRecord = Provider.of<MyProviderForInventoryView>(context, listen: false).selectedStockRecord;
      fetchStockHistoryForRecord(context, stockRecord);
      notifyListeners();
    }catch(e){
      print(e);
    }
  }


  fetchStockHistoryForRecord(BuildContext context, StockRecord stockRecord)async{

    changeLoading(true);
    try{

      var result = await aircraftRepository.stockHistoryByRecord(stockRecord);

      print(result.runtimeType);
      if(result is List<StockHistory>){
        stockHistory = result;
        notifyListeners();
      }else{
        failedSnackbar(context: context, message: 'Failed fetching history');
      }

    }catch(e){
      failedSnackbar(context: context, message: 'Server Error');
    }
    changeLoading(false);

  }

}