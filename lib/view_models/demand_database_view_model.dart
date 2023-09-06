import 'dart:ffi';

import 'package:aircraft_inventory_management/models/DemandModel.dart';
import 'package:aircraft_inventory_management/models/DemandModelByID.dart';
import 'package:aircraft_inventory_management/models/database.dart';
import 'package:aircraft_inventory_management/repositories/database_reposittory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../data/local/hive_manager.dart';
import '../data/remote/responses/api_response.dart';
import '../dependency_injection/di.dart';
import '../models/user.dart';
import '../utils/dialogs/confirmation_dialog.dart';
import '../utils/routes/route_names.dart';
import '../utils/snackbars/failure_snackbar.dart';
import '../utils/snackbars/input_field_error_snackbar.dart';
import 'package:aircraft_inventory_management/models/category.dart' as ct;

import '../utils/snackbars/success_snackbar.dart';

class DemandDatabaseViewModel extends ChangeNotifier{
  TextEditingController addnumber=TextEditingController();
  TextEditingController adddate=TextEditingController();
  TextEditingController addnomenclature =TextEditingController();
  TextEditingController addunit= TextEditingController();
  TextEditingController addquantity = TextEditingController();
   late TextEditingController addreceived;
  TextEditingController addrmk = TextEditingController();

  TextEditingController searchnomenclature = TextEditingController();
  TextEditingController searchnumber = TextEditingController();

  TextEditingController updatenumber=TextEditingController();
 TextEditingController updatedate=TextEditingController();
  TextEditingController updatenomenclature=TextEditingController();
  //late TextEditingController updateunit;
  TextEditingController updatequantity=TextEditingController();
   TextEditingController updatereceived =TextEditingController();
  TextEditingController updatermk = TextEditingController();


  ct.Category? acft;
  HiveManager hiveManager = sl.get<HiveManager>();
  DataBaseRepository databaserepo =sl.get<DataBaseRepository>();
  String demandtype="DP";
  List<DemandModel> getdemandlistforDP=[];
  List<DemandModel> getdemandlistforLP=[];
  List<DemandModel> duplicatedemandlistforDP=[];
  List<DemandModel> duplicatedemandlistforLP=[];


  DemandModel demandmodel=DemandModel();



  initializeDPtype(String st){
    demandtype=st;
    notifyListeners();
  }
  Oninit(){
    updatenumber.text=demandmodel.demandNo??'';
    updatedate.text=demandmodel.date??'';
    updatermk.text=demandmodel.rmk??'';
    updatenomenclature.text=demandmodel.description??'';
    updatequantity.text=demandmodel.demandQuantity.toString();
    updatereceived.text=demandmodel.received.toString();
    notifyListeners();
  }
  updateclear(){
    updatenumber.clear();
    updatedate.clear();
    updatermk.clear();
    updatenomenclature.clear();
    updatequantity.clear();
    updatereceived.clear();
    notifyListeners();
  }

  addfieldclear(){
    addnumber.clear();
    addreceived.clear();
    addquantity.clear();
    addnomenclature.clear();
    addrmk.clear();
    adddate.clear();
    notifyListeners();

  }

  updateDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      updatedate.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }

  pickDate(BuildContext context) async{
    DateTime? pd = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2090));
    if(pd!=null){
      adddate.text = DateFormat('yyyy-MM-dd').format(pd);
      notifyListeners();
    }

  }
  deleteDataByID(String id,BuildContext context)async{
    EasyLoading.show(status: "Please Wait");
    try{
      var response = await databaserepo.deleteStockRecord(id);

      if(response is Success){
        //await Provider.of<DemandDatabaseViewModel>(context, listen: false).fetch_all_data(context);


        successSnackbar(context: context, message: 'Successfully deleted stock record');
        //Navigator.pushReplacementNamed(context, RouteNames.datachart);
        Navigator.of(context).pop();

      }else{
        failedSnackbar(context: context, message: 'Failed to delete record');
        Navigator.of(context).pop();
      }
    }catch(e){
      failedSnackbar(context: context, message: e.toString());
    }
   EasyLoading.dismiss();

  }

  void deleteDataRecord(BuildContext context,String id) async{

    confirmDialog(
        context,
        'Delete Data Record',
        'Are you sure to delete this record?',
            (){
          deleteDataByID(id, context);


        }
        ,
            (){
          Navigator.of(context).pop();
        }
    );

  }
  initiateAircraftItem(ct.Category af){
    acft = af;

    notifyListeners();
  }
  onInit(BuildContext context, ct.Category ct)async{

    initiateAircraftItem(ct);


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
  String? selectedUpdateUnit='No.';
  List<String> UPunits = [
    'No.',
    'Pcs',
    'Kg',
    'Meter',
    'Litre',
    'Set',
    'EA'
  ];

  selectedUnitForUpdate(String history){
    selectedUpdateUnit = history;
    notifyListeners();
  }
  add_data_record(BuildContext context)async{

    print('came here');
    if(addnumber.text.isEmpty){
      print('check1');
      inputFieldErrorSnackbar(context: context, message: 'Demand Number');
      return;
    }

     if(addquantity.text.isEmpty){
       print('check2');
      inputFieldErrorSnackbar(context: context, message: 'Demand Quantity');
      return;
    }
     if(addreceived.text.isEmpty){
       print('check3');
      inputFieldErrorSnackbar(context: context, message: 'Received Number');
      return;
    }
      if(addnomenclature.text.isEmpty){
        print('check4');
      inputFieldErrorSnackbar(context: context, message: 'Nomenclature');
      return;
    }
      if(addrmk.text.isEmpty){
        print('check5');
      inputFieldErrorSnackbar(context: context, message: 'RMK');
      return;
    }
      if(adddate.text.isEmpty){
        print('check6');
      inputFieldErrorSnackbar(context: context, message: 'date');
      return;
    }



      print("chocho");
      EasyLoading.show();

      try{
        /*in post api both deman_quantity and received is integer
        so here they parsed into integer*/
        int? quantity=int.parse(addquantity.text);
        int? received=int.parse(addreceived.text);
        notifyListeners();

        User? user = await hiveManager.getUserData();
        Map<String, dynamic> data = {
          'demand_no':addnumber.text.trim(),
          'date':adddate.text.trim(),
          'aircraft':acft!.id!.toString(),
          'description':addnomenclature.text.trim(),
          'created_by':user!.id.toString(),
          'unit':selectedUnit,
          'demand_quantity':quantity.toString(),
          'received':received.toString(),
          'demand_type': demandtype,
          'rmk':addrmk.text.trim()
        };
        notifyListeners();

        var result = await databaserepo.addtoDatabase(data);
        notifyListeners();

        if(result is DemandModel){

          successSnackbar(context: context, message: 'Successfully created demand database');
          addfieldclear();

        }else if(result is Failure){
          failedSnackbar(context: context, message: '${result.error}');
          print(result.error);
        }


      }catch(e){
        failedSnackbar(context: context, message: '$e');
        print(e.toString());
      }
      notifyListeners();
      EasyLoading.dismiss();

  }
  void dataFilteringDP() {
    try{
      duplicatedemandlistforDP = getdemandlistforDP.where(
              (element) =>
          element.description!.toLowerCase().contains(searchnomenclature.text.toLowerCase())
                  && element.demandNo!.toLowerCase().contains(searchnumber.text.toLowerCase())

      ).toList();
      notifyListeners();
    }catch(e){

      print(e);
    }
  }
  void dataFilteringLP() {
    try{
      duplicatedemandlistforLP = getdemandlistforLP.where(
              (element) =>
          element.description!.toLowerCase().contains(searchnomenclature.text.toLowerCase())
              && element.demandNo!.toLowerCase().contains(searchnumber.text.toLowerCase())

      ).toList();
      notifyListeners();
    }catch(e){

      print(e);
    }
  }


  fetch_all_data(BuildContext context)async{
    EasyLoading.show(status: "Please wait");
    getdemandlistforLP.clear();
    getdemandlistforDP.clear();
    notifyListeners();


    try{
      var result = await databaserepo.getDemanddata();
      if(result is List<DemandModel>){

        result = result.where((element) => element.aircraft!.id==acft!.id).toList();

        for(int i=0;i<result.length;i++){
          if(result[i].demandType=="DP"){
            getdemandlistforDP.add(result[i]);
            notifyListeners();

          }else{
            getdemandlistforLP.add(result[i]);
            notifyListeners();
          }
        }
        duplicatedemandlistforDP=getdemandlistforDP;
        notifyListeners();
        duplicatedemandlistforLP=getdemandlistforLP;
        notifyListeners();


      }else{
        failedSnackbar(context: context, message: 'Unable to fetch stock records');
      }
    }catch(e){
      print(e);
      failedSnackbar(context: context, message: 'Server error');
    }
    EasyLoading.dismiss();

  }

  fetch_data_by_ID(BuildContext context,String id)async{
    EasyLoading.show(status: "Please wait");
    try{
      var result = await databaserepo.getDataByID(id);
      if(result is DemandModel){

        demandmodel=result;
        notifyListeners();
      }
      else{
        failedSnackbar(context: context, message: 'Unable to fetch stock records');
      }
    }catch(e){
      print(e);

      failedSnackbar(context: context, message: 'Server error');
    }
    EasyLoading.dismiss();



  }

  updateDataByID(BuildContext context,String id)async{
    if(updatermk.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'RMK');
      return;
    }
    if(updatedate.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Date');
      return;
    }
    if(updatereceived.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Received');
      return;
    }
    if(updatenomenclature.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Nomenclature');
      return;
    }
    if(updatequantity.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Quantity');
      return;
    }  if(updatenumber.text.isEmpty){
      inputFieldErrorSnackbar(context: context, message: 'Number');
      return;
    }
    EasyLoading.show(status: "Please wait");

    try{
     // User? user = await hiveManager.getUserData();
      Map<String, dynamic> data = {
        'demand_no':updatenumber.text.trim(),
        'date':updatedate.text.trim(),

        'description':updatenomenclature.text.trim(),

        'unit':selectedUpdateUnit,
        'demand_quantity':updatequantity.text.trim(),
        'received':updatereceived.text.trim(),
        'rmk':updatermk.text.trim()

           };


      var result = await databaserepo.updateDemanddata(data, id);
      notifyListeners();
      if(result is DemandModel){

        successSnackbar(context: context, message: 'Successfully updated demand database');

      }else if(result is Failure){
        failedSnackbar(context: context, message: '${result.error}');
      }

    }catch(e){
      failedSnackbar(context: context, message: '$e');
    }
    EasyLoading.dismiss();

  }

  void processUpdateDemandQuantity(String s) {
    if(s.isEmpty){
      s="0";
    }
    try{

      int fd = int.parse(s);

      int total = (demandmodel.demandQuantity??0)+(demandmodel.received??0);
      int nw = total-fd;
      updatequantity.text = nw.toString();
      notifyListeners();

    }catch(e){

    }
  }




}