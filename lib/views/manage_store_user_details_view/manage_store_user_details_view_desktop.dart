import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/view_models/manage_store_view_model.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';

import '../user_management/user_management_pagination_class.dart';

class ManageStoreUserDetailsDesktop extends StatefulWidget {
  const ManageStoreUserDetailsDesktop({Key? key}) : super(key: key);

  @override
  State<ManageStoreUserDetailsDesktop> createState() => _ManageStoreUserDetailsDesktopState();
}

class _ManageStoreUserDetailsDesktopState extends State<ManageStoreUserDetailsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ManageStoreViewModel>(
      builder: (context, msvm, _) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 20),
          child: Container(
            height: 865,
            width: MediaQuery.of(context).size.width*.775,


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  height: 770,
                  width: MediaQuery.of(context).size.width*.745,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 28.53,),
                      Row(
                        children: [

                          SizedBox(width: 43,),


                            Row(
                            children: [
                              IconButton(onPressed: (){
                                msvm.previousPage();
                              }
                                  , icon: Icon(Icons.arrow_back)),
                              SizedBox(width: 10,),
                              Text("${msvm.profiles[msvm.selectedUserIndex].email}",
                                style: TextStyle(
                                    color: Color(0xFF444444),
                                    fontFamily: "Inter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),),
                            ],
                          ),

                          /*Expanded(
                            child: Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Container(
                                      height: 33.81,
                                      width: MediaQuery.of(context).size.width*.029,

                                      decoration: BoxDecoration(
                                          color: Color(0xFFFFE7E7),
                                          borderRadius: BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Center(
                                        child: Icon(Icons.delete_outline_outlined,color: Color(0xFFE70707),size: 20,),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          )*/

                        ],
                      ),

                      SizedBox(height: 30,),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MultiSelectChipField<Category?>(
                          height: 100,

                          scrollBar: HorizontalScrollBar(),
                          items: msvm.aircrafts.map((e) => MultiSelectItem(e, e.name??'')).toList(),
                          //[MultiSelectItem("Bangladesh", "Bangladesh"),MultiSelectItem("India", "India"), MultiSelectItem("Srilanka", "Srilanka"), MultiSelectItem("USA", "USA")],
                          //initialValue: msvm.filterObjects(msvm.aircrafts, msvm.profiles[msvm.selectedUserIndex].permitted_aircrafts??[]),
                          initialValue: msvm.updatedPermittedAircraftValue,
                          title: Text("Permitted Aircrafts"),
                          headerColor: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            border: Border.all(color: Colors.blue.withOpacity(0.7), width: 1.8),
                          ),
                          selectedChipColor: Colors.blue.withOpacity(0.5),
                          selectedTextStyle: TextStyle(color: Colors.blue[800]),

                          onTap: (values) {
                            print(values);
                            msvm.changeUpdatedPermittedAircraftValue(values);
                            //_selectedAnimals4 = values;
                          },

                        ),
                      ),

                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(onPressed: (){

                          msvm.updateProfile(context);

                        }, child: Text("Update Permitted Aircraft")
                        ),
                      ),
                      SizedBox(height: 30,),

                      msvm.profiles[msvm.selectedUserIndex].is_verified !=true?Row(
                        children: [
                          Text("User has requested for access"),
                          TextButton(onPressed: (){

                            msvm.verifyProfile(context);
                          }, child: Text("Accept")),

                        ],
                      ):SizedBox.shrink()

                    ],),

                ),
              ],
            ),

          ),
        );
      }
    );
  }
}
