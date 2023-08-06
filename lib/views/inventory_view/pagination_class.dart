import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:flutter/material.dart';

class myData extends DataTableSource{

  BuildContext mycontext;
  List<Aircraftitem> items;


  myData({required this.mycontext, required this.items});


  @override
  DataRow? getRow(int index) {
    return DataRow(
      //color:MaterialStateProperty.all<Color>(Colors.black),
        cells: [
      DataCell(Container(
      height: 27.47,
      width: MediaQuery.of(mycontext).size.width*.018,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0xFFD9D9D9)
      ),),),
      DataCell(Text(items[index].partNo.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].nomenclature.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].astronomicalUnit.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].cardNo.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].quantity.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].receivedDiOrg.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].manufacturer.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].expire.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].expenditure.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].rmk.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(items[index].createdAt.toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
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
    ]);
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