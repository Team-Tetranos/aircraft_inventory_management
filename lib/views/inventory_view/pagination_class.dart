import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:flutter/material.dart';

class myData extends DataTableSource{

  BuildContext mycontext;
  List<StockRecord> items;
  Function(int) onPressed;


  myData({required this.mycontext, required this.items, required this.onPressed});


  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
     /* DataCell(Container(
      height: 27.47,
      width: MediaQuery.of(mycontext).size.width*.018,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0xFFD9D9D9)
      ),),),
      DataCell(VerticalDivider()),*/
      DataCell(Text(items[index].card_no.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF484848)
      ),),),
      DataCell(VerticalDivider()),
      DataCell(Text(items[index].description.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF484848)
      ),),),
      DataCell(VerticalDivider()),
      DataCell(Text(items[index].stock_no.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF484848)
      ),),),
      DataCell(VerticalDivider()),
      DataCell(Text(items[index].balance.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF484848)
      ),),),
      DataCell(VerticalDivider()),
      DataCell(Text(stringToDate(items[index].created_at),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF484848)
      ),),),
      DataCell(VerticalDivider()),
      DataCell(
          Container(
            height: 25.36,
            width: MediaQuery.of(mycontext).size.width*.0506,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xFFC6D8F1)
            ),
            child: Center(child: Text('status'.toString(),
              style: TextStyle(color: Color(0xFF066FFF,),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Inter"),),),
          )),
      DataCell(VerticalDivider()),
      DataCell(Text('upload Status',style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF484848)
      ),),),

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