import 'package:aircraft_inventory_management/utils/convertStockHistoryToString.dart';
import 'package:flutter/material.dart';

import '../../models/stock_record_report.dart';

class ReportTable extends DataTableSource{
  List<StockRecordReport> reports;
  ReportTable({required this.reports});
  @override
  DataRow? getRow(int index) {
    StockRecordReport report = reports[index];
    return DataRow(



        onSelectChanged: (b){


        },
        cells: [
          // DataCell(VerticalDivider()),
          DataCell(Text((index+1).toString(),style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text("${report.stock_no}",style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text("${report.description}",style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text("${report.unit}",style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text("${report.card_no}",style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text(report.balance.toString(),style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w900,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text(convertStockHistoryToString(report.stock_histories, true),style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text(convertStockHistoryToStringExpiry(report.stock_histories),style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text(totalExpenditureQuantity(report.stock_histories),style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text(convertStockHistoryToString(report.stock_histories, false),style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
          DataCell(VerticalDivider()),
          DataCell(Text('',style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF484848)
          ),),),
        ]
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => reports.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

}