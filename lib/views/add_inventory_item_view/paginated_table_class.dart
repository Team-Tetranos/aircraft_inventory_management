import 'package:flutter/material.dart';

class DataClass extends DataTableSource{
  @override
  DataRow? getRow(int index) {
    return DataRow(
      cells: [
       // DataCell(VerticalDivider()),
        DataCell(Text("3/2/2023",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text("SL034",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text("20",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text("15",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text("20",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
      ]
    );
    throw UnimplementedError();
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 50;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

}