import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Update_DP extends ChangeNotifier{
  TextEditingController updatedemandnumberDP=TextEditingController();
  TextEditingController updatedemanddateDP=TextEditingController();
  TextEditingController updatenomenclatureDP =TextEditingController();
  TextEditingController updatedemandunitDP= TextEditingController();
  TextEditingController updatedemandquantityDP = TextEditingController();
  TextEditingController updatereceivedDP = TextEditingController();
  TextEditingController updatermkDP =TextEditingController();

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      updatedemanddateDP.text = DateFormat('yyyy-MM-dd').format(pd);
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