import 'package:flutter/material.dart';

class myData extends DataTableSource{

  BuildContext mycontext;


  List<Map<String ,dynamic>> _data=List.generate(
      155,
          (index) => {
        "Image":"MyImage",
            "Name":"'mamun",
            "Buying Price" : 340,
            "Quantity" : 50,
            "Delivered" : 25,
            "Remaining" : 25,
            "Expire Date" : "1 jul 3023",
            "Status" : "Active"

          });

  myData({required this.mycontext});


  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Container(
      height: 27.47,
      width: MediaQuery.of(mycontext).size.width*.018,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color(0xFFD9D9D9)
      ),),),
      DataCell(Text(_data[index]["Image"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(_data[index]["Name"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(_data[index]["Buying Price"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(_data[index]["Quantity"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(_data[index]["Delivered"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(_data[index]["Remaining"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),
      DataCell(Text(_data[index]["Expire Date"].toString(),style: TextStyle(
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
            child: Center(child: Text(_data[index]["Status"].toString(),
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
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}