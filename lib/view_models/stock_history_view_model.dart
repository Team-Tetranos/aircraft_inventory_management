import 'package:aircraft_inventory_management/models/stock_history.dart';
import 'package:aircraft_inventory_management/res/constants.dart';
import 'package:aircraft_inventory_management/utils/snackbars/failure_snackbar.dart';
import 'package:aircraft_inventory_management/utils/snackbars/success_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';

import '../data/local/hive_manager.dart';
import '../data/remote/responses/api_response.dart';
import '../dependency_injection/di.dart';
import '../models/stock_record.dart';
import '../models/user.dart';
import '../repositories/aircraft_repository.dart';
import '../utils/snackbars/input_field_error_snackbar.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;

class StockHistoryViewModel extends ChangeNotifier{

  HiveManager hiveManager = sl.get<HiveManager>();
  HiveConstants hiveConstants = sl.get<HiveConstants>();
  AircraftRepository aircraftRepository = sl.get<AircraftRepository>();
  late Box<StockHistory> stockListHistoryBox;
  ct.Category? acft;
  List<StockHistory> stockHistory = [];

  TextEditingController dateforsecondpageAddInventory = TextEditingController();
  TextEditingController vouchernumberforsecondpageAddInventory = TextEditingController();
  TextEditingController quantityforsecondpageAddInventory = TextEditingController();

  /*updateStockListHistoryBox()async{
    stockListHistoryBox = await hiveManager.getStockListHistoryBox();

    notifyListeners();
  }*/

   getStockHistoryBox()async{
    stockListHistoryBox = hiveManager.getStockHistoryBox();
    notifyListeners();
  }

  onInit(BuildContext context, ct.Category ct, StockRecord stockRecord)async{
     getStockHistoryBox();
    initiateAircraftItem(ct);
    initiateStockRecord(stockRecord);

  }


  StockRecord? updatedStockRecordForNextPag;
  List<String> historyStatus = [
    'Received',
    'Expenditure'
  ];

  updateStockHistory(List<StockHistory> sh){
    stockHistory = sh;
    notifyListeners();
  }

  String? selectedHistoryStatus = 'Received';

  updateSelectedHistoryStatus(String history){
    selectedHistoryStatus = history;
    notifyListeners();
  }

  //these variables are for AddInventory first page

  TextEditingController cardnumberforfirstpageAddInventory =TextEditingController();
  TextEditingController dateforfirstpageAddInventory = TextEditingController();
  TextEditingController stocknumberforfirstpageAddInventory = TextEditingController();
  TextEditingController aircraftforfirstpageAddInventory=TextEditingController();
  TextEditingController nomenclatureforfirstpageAddInventory = TextEditingController();

  final pagecontroller = PageController();

  initiateAircraftItem(ct.Category af){
    acft = af;
    aircraftforfirstpageAddInventory.text = af.name!;
    notifyListeners();
  }

  initiateStockRecord(StockRecord? stockRecord){

    updatedStockRecordForNextPag = stockRecord;
    notifyListeners();

  }




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

  pickDateForHistory(BuildContext context) async{
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

  create_stock_record(BuildContext context)async{
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
      User? user = await hiveManager.getUserData();
      Map<String, dynamic> data = {
        'card_no':cardnumberforfirstpageAddInventory.text.trim(),
        'date':dateforfirstpageAddInventory.text.trim(),
        'stock_no':stocknumberforfirstpageAddInventory.text.trim(),
        'aircraft':acft!.id!,
        'description':nomenclatureforfirstpageAddInventory.text.trim(),
        'created_by':user!.id
      };


      var result = await aircraftRepository.createStockRecord(data);


      if(result is StockRecord){
        initiateStockRecord(result);
        successSnackbar(context: context, message: 'Successfully created stock record');
        updateStockHistory([]);
        pagecontroller.nextPage( duration: Duration(seconds: 1), curve:Curves.easeInOut);
      }else if(result is Failure){
        failedSnackbar(context: context, message: 'Failed to create stock record');
      }

    }catch(e){
      failedSnackbar(context: context, message: '$e');
    }
  }

  clearStockHistoryFieldData(){
    vouchernumberforsecondpageAddInventory.clear();
    dateforsecondpageAddInventory.clear();
    quantityforsecondpageAddInventory.clear();
    selectedHistoryStatus = historyStatus[0];
    notifyListeners();
  }


  createStockHistoryRecordBulk(BuildContext context)async{
    if(dateforsecondpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Date');
      return;
    }
    if(vouchernumberforsecondpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Voucher Number');
      return;
    }
    if(quantityforsecondpageAddInventory.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Quantity');
      return;
    }

    User? user = await hiveManager.getUserData();

    StockHistory stockHistory = StockHistory(
        created_by: user!.id,
        stock_record: updatedStockRecordForNextPag!.id,
        date: dateforsecondpageAddInventory.text.trim(),
        voucher_no: vouchernumberforsecondpageAddInventory.text.trim(),
        quantity: int.parse(quantityforsecondpageAddInventory.text.trim()),
        image: null,
        received: selectedHistoryStatus==historyStatus[0],
        uploaded: false
    );
    await hiveManager.addStockHistoryData(stockHistory);

    try{

      //clearStockHistoryFieldData();
      print('suucessfully added');
    }catch(e){
      print(e);
    }

  }

  void create_stock_history(BuildContext context) async{
    try{

      List<StockHistory> stocks = hiveManager.getStockHistoryData(updatedStockRecordForNextPag!);

      print(stocks.length);
      for (int i=0;i<stocks.length;i++) {
        var result = await aircraftRepository.createStockHistory(stocks[i]);
        if(result is StockHistory){
          await hiveManager.updateUploadedHistoryItems(stocks[i]);
        }else{
          failedSnackbar(context: context, message: 'Stock uploading failed');
        }
      }
      await hiveManager.updateStockHistory(updatedStockRecordForNextPag!);



    }catch(e){

    }
  }

}