import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Add_DP_View_Model extends ChangeNotifier{
  TextEditingController demandnumberDP=TextEditingController();
  TextEditingController demanddateDP=TextEditingController();
  TextEditingController nomenclatureDP =TextEditingController();
  TextEditingController demandunitDP= TextEditingController();
  TextEditingController demandquantityDP = TextEditingController();
  TextEditingController receivedDP = TextEditingController();
  TextEditingController rmkDP =TextEditingController();

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      demanddateDP.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }
  String? selectedUnit = 'No.';
  List<String> DPunits = [
    'No.',
    'Pcs',
    'Kg',
    'Meter',
    'Litre',
    'Set',
    'EA'
  ];
 selectedUnitForDP(String history){
    selectedUnit = history;
    notifyListeners();
  }
}