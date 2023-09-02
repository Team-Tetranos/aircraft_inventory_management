import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';

class DataBaseView extends StatefulWidget {
  const DataBaseView({Key? key}) : super(key: key);

  @override
  State<DataBaseView> createState() => _DataBaseViewState();
}

class _DataBaseViewState extends State<DataBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD9D9D9),
      appBar: AppBar(
        leading: Row(
          children: [
            IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: Icon(Icons.arrow_back,color: Colors.black,),
            ),

          ],
        ),
        title:  Text("Select Database",
          style: TextStyle(
              color: Colors.black,
            fontWeight: FontWeight.w500

          ),),
      ),
      body: SafeArea(
        child:
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteNames.datachartDP);

                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF1e4837),
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: Center(
                    child: Text("DP",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteNames.datachartLP);
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width*.3,
                  decoration: BoxDecoration(
                      color: Color(0xFF1e4837),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: Center(
                    child: Text("LP",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
