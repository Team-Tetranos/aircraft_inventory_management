import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Add_LP_View_Model extends ChangeNotifier{
  TextEditingController demandnumberLp=TextEditingController();
  TextEditingController demanddateLP=TextEditingController();
  TextEditingController nomenclatureLP =TextEditingController();
  TextEditingController demandunitLP= TextEditingController();
  TextEditingController demandquantityLP = TextEditingController();
  TextEditingController receivedLP = TextEditingController();
  TextEditingController rmkLP =TextEditingController();

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      demanddateLP.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }
  String? selectedUnit = 'No.';
  List<String> LPunits = [
    'No.',
    'Pcs',
    'Kg',
    'Meter',
    'Litre',
    'Set',
    'EA'
  ];
  selectedUnitForLP(String history){
    selectedUnit = history;
    notifyListeners();
  }
}