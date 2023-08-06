import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User_management_Data extends DataTableSource{

  BuildContext mycontext;


  List<Map<String ,dynamic>> _data=List.generate(
      155,
          (index) => {

        "Name":"Admin",
        "User Role" : {
          "Manager" : "manager",
          "Admin" : "Admin",
          "Auditor" : "Auditor"
        },
            "Action" : "Active"

      });

  User_management_Data({required this.mycontext});


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
      DataCell(Container(
        height: 36,
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              //backgroundImage: NetworkImage("https://images.unsplash.com/photo-1611003228941-98852ba62227?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGRvZ3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
            ),
            SizedBox(width: 13,),
            Text(_data[index]["Name"].toString(),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFF797979)
            ),),

          ],
        ),
      )),
      DataCell(
        Container(
          height: 25,
          child: Row(
            children: [
              Container(
                height: 23,
                width: MediaQuery.of(mycontext).size.width*.0416,
                decoration: BoxDecoration(
                  color: Color(0xFFF3BE07),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text(_data[index]["User Role"]["Manager"].toString(),style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black
                  ),)
                ),
                
              ),
              SizedBox(width: 20,),
              Container(
                height: 23,
                width: MediaQuery.of(mycontext).size.width*.0416,
                decoration: BoxDecoration(
                    color: Color(0xFF079827),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                    child: Text(_data[index]["User Role"]["Admin"].toString(),style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white
                    ),)
                ),

              ),
              SizedBox(width: 20,),
              Container(
                height: 23,
                width: MediaQuery.of(mycontext).size.width*.0416,
                decoration: BoxDecoration(
                    color: Color(0xFF062A61),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                    child: Text(_data[index]["User Role"]["Auditor"].toString(),style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white
                    ),)
                ),

              )
            ],
          ),
        )
      ),
      DataCell(Text(_data[index]["Action"].toString(),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color(0xFF797979)
      ),),),

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