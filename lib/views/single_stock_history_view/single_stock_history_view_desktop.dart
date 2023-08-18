import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_models/inventory_view_model.dart';

class SingleStockHistoryViewDesktop extends StatefulWidget {
  const SingleStockHistoryViewDesktop({Key? key}) : super(key: key);

  @override
  State<SingleStockHistoryViewDesktop> createState() => _SingleStockHistoryViewDesktopState();
}

class _SingleStockHistoryViewDesktopState extends State<SingleStockHistoryViewDesktop> {
  @override

  @override
  Widget build(BuildContext context) {
    return Consumer<SingleItemViewModel>(
      builder: (context, svm, _) {
        return SingleChildScrollView(
          child: Container(
            height: 747,
            width: MediaQuery.of(context).size.width * .716,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 25,top: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(

                          children: [
                            IconButton(onPressed: (){
                              svm.dateforsecondpageAddInventory.clear();
                              svm.quantityforsecondpageAddInventory.clear();
                              svm.vouchernumberforsecondpageAddInventory.clear();
                              Provider.of<MyProviderForInventoryView>(context, listen: false).changePage(1);
                            }, icon: Icon(Icons.arrow_back)),

                            Text("Update Stock History",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  fontFamily: "Inter",
                                  color: Colors.black
                              ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          children: [

                            GestureDetector(
                              onTap: (){
                                svm.deleteStockHistoryDialog(context);

                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20
                                  ),
                                  child: Text('Delete',style: TextStyle(
                                      color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ),

                            SizedBox(width: 10,),

                            GestureDetector(
                              onTap: (){
                                svm.update_stock_history(context);

                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF1e4837),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 20
                                  ),
                                  child: Text('Update Item',style: TextStyle(
                                      color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 50,),

                  Row(

                    children: [
                      Container(
                          width: 350,

                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Date",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 250,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          onTap: (){
                                            svm.pickDateStockUpdate(context);
                                          },
                                          controller: svm.dateforsecondpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 16),
                                            hintText: 'Tap to input date',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Quantity",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 250,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: svm.quantityforsecondpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 16),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                            ],
                          )
                      ),
                      SizedBox(width: 60,),
                      Container(
                          width: 350,

                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Voucher No",
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 250,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: svm.vouchernumberforsecondpageAddInventory,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(left: 6,bottom: 16),
                                            hintText: '',
                                            border: InputBorder
                                                .none, // Remove the default TextField border
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),

                                ],),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(svm.selectedHistoryStatus.toString(),
                                    style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: "Inter"),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      height: 30.0,
                                      width: 250,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(Radius.circular(7)),
                                      ),
                                      child: Center(
                                          child: DropdownButton<String>(
                                            value: svm.selectedHistoryStatus,
                                            underline: SizedBox.shrink(),


                                            style: TextStyle(
                                                color: Colors.black
                                            ),
                                            onChanged: (String?  value){
                                              svm.updateSelectedHistoryStatus(value!);
                                            },
                                            items: svm.historyStatus.map((e) => DropdownMenuItem<String>(
                                                value: e,
                                                child: Text(e)
                                            )).toList(),
                                          )
                                      ),
                                    ),
                                  ),

                                ],),
                            ],
                          )
                      ),

                      //SizedBox(width: 60,),


                    ],
                  ),

                  SizedBox(height: 10,),

                  if(svm.selectedHistoryStatus==svm.historyStatus[0])
                    Row(

                    children: [
                      Text(
                        "Expiry Date",
                        style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: "Inter"),
                      ),

                      SizedBox(width: 10,),

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          // padding: EdgeInsets.symmetric(horizontal: 16.0),
                          height: 30.0,
                          width: 250,// Set the desired height for the TextField
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(7))
                          ),
                          child: Center(
                            child: TextField(
                              onTap: (){
                                svm.pickDateForHistoryForExpire(context);
                              },
                              controller: svm.stockHistoryExpireDateforsecondpageAddInventory,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 6,bottom: 16),

                                hintText: 'Tap to input date',
                                border: InputBorder
                                    .none, // Remove the default TextField border
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],),



                ],),
            ),


          ),
        );
      }
    );
  }
}
