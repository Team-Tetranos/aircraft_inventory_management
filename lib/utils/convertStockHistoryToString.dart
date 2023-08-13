import '../models/stock_history.dart';

String convertStockHistoryToString(List<StockHistory>? stocks, bool received){

  String result = '';
  if(stocks!=null){
    for (var element in stocks) {
      if(received){
        if(element.received==true){
          var qty = element.quantity;
          var date = element.date;
          var rst = "${qty}X$date\n";
          result+=rst;
        }
      }else{
        if(element.received!=true){
          var qty = element.quantity;
          var date = element.date;
          var rst = "${qty}X$date\n";
          result+=rst;
        }
      }
    }
  }

  return result;

}

String convertStockHistoryToStringExpiry(List<StockHistory>? stocks){

  String result = '';
  if(stocks!=null){
    for (var element in stocks) {
      if(element.received==true){
        var date = element.expire;
        var rst = "$date\n";
        result+=rst;
      }
    }
  }

  return result;

}

String totalExpenditureQuantity(List<StockHistory>? stocks){
  String result = '';
  if(stocks!=null){
    int total = 0;
    for (var element in stocks) {
      if(element.received!=true){
        total+=element.quantity??0;
      }
    }
    result = total.toString();
  }

  return result;
}

