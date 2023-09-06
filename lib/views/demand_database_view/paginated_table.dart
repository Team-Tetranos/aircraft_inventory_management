import 'package:aircraft_inventory_management/models/DemandModel.dart';
import 'package:aircraft_inventory_management/utils/convertStockHistoryToString.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/view_models/demand_database_view_model.dart';
import 'package:flutter/material.dart';

import '../../models/stock_record_report.dart';
import 'datachart_details_view.dart';

class TableDataBase extends DataTableSource{
 // Function onpressed;
  BuildContext context;


  List<DemandModel> items;



 TableDataBase({required this.items,required this.context});


  @override
  DataRow? getRow(int index) {



    return DataRow(
      onSelectChanged: (b){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  DataChartDetailsview( dataid: items[index].id,)),
        );

      },



        cells: [
          // DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text("${index+1}",style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text(items[index].demandNo.toString(),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text(items[index].date.toString(),style: TextStyle(
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
            child: Text(items[index].unit.toString(),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
            child: Text(items[index].demandQuantity.toString(),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xFF484848)
            ),),
          ),),
          DataCell(VerticalDivider()),
          DataCell(Center(
              child: Text(items[index].received.toString(),style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  color: Color(0xFF484848)
              ),)
          ),),
          DataCell(VerticalDivider()),
          DataCell( Center(
              child: Text(items[index].rmk??'',style: TextStyle(
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
  int get rowCount => items.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;

}