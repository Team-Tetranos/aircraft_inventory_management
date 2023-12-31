import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../models/stock_history.dart';

class myData extends DataTableSource{

  BuildContext mycontext;
  List<StockRecord> items;
  Function(int) onPressed;
  Box<StockHistory> stockHistoryBox;


  myData({required this.mycontext, required this.items, required this.onPressed, required this.stockHistoryBox});


  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Center(
        child: Text((index+1).toString(),style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),),
      ),),
      DataCell(VerticalDivider()),
      DataCell(Center(
        child: Text(items[index].card_no.toString(),style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),),
      ),),
      DataCell(VerticalDivider()),
      DataCell(Center(
        child: Text(items[index].description.toString(),style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),),
      ),),
      DataCell(VerticalDivider()),
      DataCell(Center(
        child: Text(items[index].stock_no.toString(),style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),),
      ),),
      DataCell(VerticalDivider()),
      DataCell(Center(
        child: items[index].balance==0?Text("NIL",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),):Text(items[index].balance.toString(),style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),),
      ),),
      DataCell(VerticalDivider()),
      DataCell(Center(
        child: Text(stringToDate(items[index].latest_expiry),style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 12,
            color: Color(0xFF484848)
        ),),
      ),),
      DataCell(VerticalDivider()),
      DataCell(
          Container(
            height: 25.36,
            width: MediaQuery.of(mycontext).size.width*.0506,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: items[index].balance! <2?Colors.red:items[index].balance! <8?Colors.yellowAccent:Colors.green
            ),
            child: Center(child: Text(items[index].balance! <2?'Low':items[index].balance! <8?'Moderate':'sufficient',
              style: TextStyle(color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Inter"),),),
          )),
      DataCell(VerticalDivider()),
      
      DataCell(
        ValueListenableBuilder(
          builder: (context, box, _) {
            bool uploaded = box.values.where((element) => element.stock_record==items[index].id).toList().isEmpty;
            return uploaded?Center(child: Icon(Icons.check, color: Colors.green,)):Center(child: Icon(CupertinoIcons.exclamationmark_circle, color: Colors.red,));

          }, valueListenable: stockHistoryBox.listenable(),
        ),),

    ], onSelectChanged: (s){
      if(s!=null && s){
        onPressed(index);
      }
    });
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => items.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}