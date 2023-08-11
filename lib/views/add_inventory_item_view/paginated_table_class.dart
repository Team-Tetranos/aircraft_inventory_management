import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/stock_history.dart';

class DataClass extends DataTableSource{
  List<StockHistory> data;
  DataClass({required this.data});
  @override
  DataRow? getRow(int index) {
    StockHistory stockHistory = data[index];
    return DataRow(
      cells: [
       // DataCell(VerticalDivider()),
        DataCell(Text("${stockHistory.date}",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text("${stockHistory.quantity}",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text("${stockHistory.voucher_no}",style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text(stockHistory.received!?'Yes':'No',style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(Text(!stockHistory.received!?'Yes':'No',style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF484848)
        ),),),
        DataCell(VerticalDivider()),
        DataCell(stockHistory.uploaded?Icon(Icons.check, color: Colors.green,):Icon(CupertinoIcons.info_circle_fill, color: Colors.red,)),
      ]
    );
    throw UnimplementedError();
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

}