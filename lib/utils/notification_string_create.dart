import 'package:aircraft_inventory_management/models/stock_record.dart';

String notificationString(StockRecord stockRecord){

  String result = '';

  try{
    if(stockRecord.balance!<=2){
      result = '${stockRecord.description} of ${stockRecord.aircraft!.name} is low in quantity';
    }else{
      result = '${stockRecord.description} of ${stockRecord.aircraft!.name} is about to expire';
    }
  }catch(e){

  }



  return result;

}