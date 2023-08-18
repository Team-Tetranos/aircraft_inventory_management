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
            child: Text("${report.stock_no}",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("${report.description}",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("${report.unit}",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("${report.card_no}",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: report.balance==0?Text("NIL",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w900,
                fontSize: 12,
                color: Color(0xFF484848)
            ),):Text(report.balance.toString(),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w900,
                fontSize: 12,
                color: Color(0xFF484848)
            ),)
          ),),
          DataCell(VerticalDivider()),
          DataCell(Tooltip(
            message: "${convertStockHistoryToString(report.stock_histories, true)}",
            child: Center(
              child: Text(convertStockHistoryToString(report.stock_histories, true),style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF484848)
              ),),
            ),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Tooltip(
            message: "${convertStockHistoryToStringExpiry(report.stock_histories)}",
            child: Center(
              child: Text(convertStockHistoryToStringExpiry(report.stock_histories),style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF484848)
              ),),
            ),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text(totalExpenditureQuantity(report.stock_histories),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(
            Tooltip(
              message: "${convertStockHistoryToString(report.stock_histories, false)}",
              child: Center(
                child: Text(convertStockHistoryToString(report.stock_histories, false),style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF484848)
          ),),
              ),
            ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text('',style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
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