
import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/stock_history.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/utils/dialogs/confirmation_dialog.dart';
import 'package:aircraft_inventory_management/utils/snackbars/failure_snackbar.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../data/remote/responses/api_response.dart';
import '../dependency_injection/di.dart';
import '../models/user.dart';
import '../utils/snackbars/input_field_error_snackbar.dart';
import '../utils/snackbars/success_snackbar.dart';

class SingleItemViewModel extends ChangeNotifier{

  bool isLoading = true;

  StockRecord stockRecord = StockRecord();
  List<StockHistory> stockHistory = [];
  AircraftRepository aircraftRepository = sl.get();
  HiveManager hiveManager = sl.get();

  TextEditingController cardnumberforfirstpageAddInventory =TextEditingController();
  TextEditingController dateforfirstpageAddInventory = TextEditingController();
  TextEditingController stocknumberforfirstpageAddInventory = TextEditingController();
  TextEditingController aircraftforfirstpageAddInventory=TextEditingController();
  TextEditingController nomenclatureforfirstpageAddInventory = TextEditingController();

  changeLoading(bool b){
    isLoading = b;
    notifyListeners();
  }

  setupStockRecord(BuildContext context){
    try{
      stockRecord = Provider.of<MyProviderForInventoryView>(context, listen: false).selectedStockRecord;
      fetchStockRecord(context);
      fetchStockHistoryForRecord(context, stockRecord);
      notifyListeners();
    }catch(e){
      print(e);
    }
  }

  fetchStockRecord(BuildContext context)async{
    changeLoading(true);
    try{
      var response = await aircraftRepository.getStockRecord(stockRecord.id!);
      if(response is StockRecord){
        stockRecord = response;
        notifyListeners();
      }else{
        failedSnackbar(context: context, message: 'Failed to fetch stock record data');
      }
    }catch(e){

    }
    changeLoading(false);
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

  String? udate;

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      dateforfirstpageAddInventory.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }


  void onInit() {
    cardnumberforfirstpageAddInventory.text = stockRecord.card_no!;
    dateforfirstpageAddInventory.text = stockRecord.date!;
    stocknumberforfirstpageAddInventory.text = stockRecord.stock_no!;
    nomenclatureforfirstpageAddInventory.text = stockRecord.description!;
  }

  updateStockRecord(BuildContext context)async{
    if(cardnumberforfirstpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Card Number');
      return;
    }
    if(dateforfirstpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Date');
      return;
    }
    if(stocknumberforfirstpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Stock Number');
      return;
    }
    if(nomenclatureforfirstpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Nomenclature');
      return;
    }

    try{
      //User? user = await hiveManager.getUserData();
      Map<String, dynamic> data = {
        'card_no':cardnumberforfirstpageAddInventory.text.trim(),
        'date':dateforfirstpageAddInventory.text.trim(),
        'stock_no':stocknumberforfirstpageAddInventory.text.trim(),
        'description':nomenclatureforfirstpageAddInventory.text.trim(),
      };


      var result = await aircraftRepository.updateStockRecord(data, stockRecord);


      if(result is StockRecord){

        Provider.of<MyProviderForInventoryView>(context, listen: false).updateSelectedStockRecord(result);

        successSnackbar(context: context, message: 'Successfully updated stock record');

        await Provider.of<MyProviderForInventoryView>(context, listen: false).fetchStocksForAircraft(context);

      }else if(result is Failure){
        failedSnackbar(context: context, message: 'Failed to update stock record');
      }

    }catch(e){
      failedSnackbar(context: context, message: '$e');
    }

  }

  deleteRecord(BuildContext context)async{

    var response = await aircraftRepository.deleteStockRecord(stockRecord);

    if(response is Success){
      await Provider.of<MyProviderForInventoryView>(context, listen: false).fetchStocksForAircraft(context);
      Navigator.of(context).pop();
      Provider.of<MyProviderForInventoryView>(context, listen: false).previousPage();
      successSnackbar(context: context, message: 'Successfully deleted stock record');

    }else{
      failedSnackbar(context: context, message: 'Failed to delete record');
    }

  }

  void deleteStockRecord(BuildContext context) async{

    confirmDialog(
        context,
        'Delete Stock Record',
        'Are you sure to delete stock record?',
        (){
          deleteRecord(context);
        }
            ,
        (){
          Navigator.of(context).pop();
    }
    );

  }

  StockHistory selectedStockHistory = StockHistory();


  void setupSelectedStockHistory(BuildContext context, StockHistory stock) {
    selectedStockHistory = stock;
    updateStockHistoryValues();
    notifyListeners();
    Provider.of<MyProviderForInventoryView>(context, listen: false).changePage(4);
  }


  updateStockHistoryValues(){
    dateforsecondpageAddInventory.text = selectedStockHistory.date!;
    vouchernumberforsecondpageAddInventory.text = selectedStockHistory.voucher_no!;
    quantityforsecondpageAddInventory.text = selectedStockHistory.quantity.toString();
    selectedHistoryStatus = selectedStockHistory.received==true?historyStatus[0]:historyStatus[1];
    notifyListeners();

  }


  pickDateStockUpdate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      dateforsecondpageAddInventory.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }

  TextEditingController dateforsecondpageAddInventory = TextEditingController();
  TextEditingController vouchernumberforsecondpageAddInventory = TextEditingController();
  TextEditingController quantityforsecondpageAddInventory = TextEditingController();

  List<String> historyStatus = [
    'Received',
    'Expenditure'
  ];

  String? selectedHistoryStatus = 'Received';

  updateSelectedHistoryStatus(String history){
    selectedHistoryStatus = history;
    notifyListeners();
  }

  update_stock_history(BuildContext context)async{
    if(dateforsecondpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'date');
      return;
    }
    if(vouchernumberforsecondpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Voucher No');
      return;
    }
    if(quantityforsecondpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Quantity');
      return;
    }


    try{
      //User? user = await hiveManager.getUserData();
      Map<String, dynamic> data = {
        'date':dateforsecondpageAddInventory.text.trim(),
        'voucher_no':vouchernumberforsecondpageAddInventory.text.trim(),
        'quantity':quantityforsecondpageAddInventory.text.trim(),
        'received':selectedHistoryStatus==historyStatus[0]?true:false,
      };


      var result = await aircraftRepository.updateStockHistory(data, selectedStockHistory);

      if(result is StockHistory){
        await fetchStockRecord(context);
        await fetchStockHistoryForRecord(context, stockRecord);
        successSnackbar(context: context, message: 'Successfully updated stock history');

        //pagecontroller.nextPage( duration: Duration(seconds: 1), curve:Curves.easeInOut);
      }else if(result is Failure){
        failedSnackbar(context: context, message: 'Failed to update stock history');
      }

    }catch(e){
      failedSnackbar(context: context, message: '$e');
    }
  }


}