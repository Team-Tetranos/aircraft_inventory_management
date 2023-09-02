import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Update_LP extends ChangeNotifier{
  TextEditingController updatedemandnumberLP=TextEditingController();
  TextEditingController updatedemanddateLP=TextEditingController();
  TextEditingController updatenomenclatureLP =TextEditingController();
  TextEditingController updatedemandunitLP= TextEditingController();
  TextEditingController updatedemandquantityLP = TextEditingController();
  TextEditingController updatereceivedLP = TextEditingController();
  TextEditingController updatermkLP =TextEditingController();

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      updatedemanddateLP.text = DateFormat('yyyy-MM-dd').format(pd);
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