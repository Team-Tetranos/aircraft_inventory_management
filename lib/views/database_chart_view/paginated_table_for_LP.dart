import 'package:aircraft_inventory_management/utils/convertStockHistoryToString.dart';
import 'package:flutter/material.dart';

import '../../models/stock_record_report.dart';

class Table_DataBase_For_LP extends DataTableSource{
 Function onpressed;
 Table_DataBase_For_LP({required this.onpressed});

  @override
  DataRow? getRow(int index) {

    return DataRow(
      onSelectChanged: (b){
        onpressed(index);
      },



        cells: [
          // DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("1",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("Demand number",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("Demand date",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("Nomenclature",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("A/U",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("Demand Quantity",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
              child: Text("Received",style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  color: Color(0xFF484848)
              ),)
          ),),
          DataCell(VerticalDivider()),
          DataCell( Center(
            child: Text("RMK",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),
          ),

        ]
    );
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