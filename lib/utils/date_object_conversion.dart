import 'package:intl/intl.dart';

String stringToDate(String? data){
  if(data==null){
    return '';
  }else{
    try{
      var dt = DateFormat('yyyy-MM-dd').format(DateTime.parse(data));
      return dt;
    }catch(e){
      print(e);
      return '';
    }

  }
}


String dateToString(DateTime? data){
  if(data==null){
    return '';
  }else{
    try{
      var dt = DateFormat('yyyy-MM-dd').format(data);
      return dt;
    }catch(e){
      print(e);
      return '';
    }

  }
}