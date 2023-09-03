import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/category.dart';
import '../../view_models/add_data_chart/add_datachart_DP_view_model.dart';
import '../../view_models/stock_view_model.dart';
import '../../view_models/view_model_for_base_view/base_view_model.dart';

class DataBaseView extends StatefulWidget {
  const DataBaseView({Key? key}) : super(key: key);

  @override
  State<DataBaseView> createState() => _DataBaseViewState();
}

class _DataBaseViewState extends State<DataBaseView> {
  @override
  void initState() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
        try{
          Category ct = Provider.of<BaseViewModel>(context, listen: false).pickedAircraft!;
          await Provider.of<DemandDatabaseViewModel>(context, listen: false).onInit(context, ct);

        }catch(e){
          print(e);
        }
      });
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Consumer<DemandDatabaseViewModel>(
      builder: (context,advm,_) {
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
                      advm.initializeDPtype("DP");
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
                      advm.initializeDPtype("LP");
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
    );
  }
}
