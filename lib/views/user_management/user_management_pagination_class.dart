import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/user.dart';

class User_management_Data extends DataTableSource{

  BuildContext mycontext;

  List<User> profiles;
  Function(int) onPressed;

  User_management_Data({required this.mycontext, required this.profiles, required this.onPressed});


  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      /*DataCell(Container(
        height: 27.47,
        width: MediaQuery.of(mycontext).size.width*.018,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Color(0xFFD9D9D9)
        ),),),*/
      DataCell(Container(
        height: 36,
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000"),
            ),
            SizedBox(width: 13,),
            Text(profiles[index].email.toString(),style: TextStyle(
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
                fontSize: 12,
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
              profiles[index].is_admin==true?Container(
                height: 23,
                width: MediaQuery.of(mycontext).size.width*.0416,
                decoration: BoxDecoration(
                    color: Color(0xFF1366D9),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                    child: Text('Admin',style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white
                    ),)
                ),

              ):
              Container(
                height: 23,
                width: MediaQuery.of(mycontext).size.width*.0416,
                decoration: BoxDecoration(
                  color: Color(0xFFF3BE07),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text('Staff',style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black
                  ),)
                ),
                
              ),
              /*Visibility(
                visible: profiles[index].is_admin??false,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      height: 23,
                      width: MediaQuery.of(mycontext).size.width*.0416,
                      decoration: BoxDecoration(
                          color: Color(0xFF079827),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(
                          child: Text(profiles[index].is_admin.toString(),style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Colors.white
                          ),)
                      ),

                    ),
                  ],
                ),
              ),*/

              /*SizedBox(width: 20,),
              Container(
                height: 23,
                width: MediaQuery.of(mycontext).size.width*.0416,
                decoration: BoxDecoration(
                    color: Color(0xFF062A61),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                    child: Text(profiles[index].is_admin.toString(),style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white
                    ),)
                ),

              )*/
            ],
          ),
        )
      ),
      DataCell(

                Center(
                  child: Container(
                    height: 23,
                    width: MediaQuery.of(mycontext).size.width*.0416,
                    decoration: BoxDecoration(
                        color: profiles[index].is_verified==true?Colors.green:Colors.redAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Center(
                        child: Text(profiles[index].is_verified==true?'Verified':'Pending',style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.black
                        ),)
                    ),

                  ),
                ),





      ),
      DataCell(Text(profiles[index].permitted_aircrafts!.map((e) => e.name).toList().toString().replaceAll('[', '').replaceAll(']', ''),style: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Color(0xFF797979)
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
  int get rowCount => profiles.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}