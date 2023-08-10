
import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/stock_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/page_view.dart';
import 'package:aircraft_inventory_management/views/add_inventory_item_view/paginated_table_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddInventoryViewForDesktop extends StatefulWidget {
   AddInventoryViewForDesktop({Key? key}) : super(key: key);

  @override
  State<AddInventoryViewForDesktop> createState() => _AddInventoryViewForDesktopState();
}

class _AddInventoryViewForDesktopState extends State<AddInventoryViewForDesktop> {


  @override
  Widget build(BuildContext context) {
    return Consumer<StockViewModel>(
      builder: (context, ivm, _) {

        return Padding(
          padding: const EdgeInsets.only(left:50,top: 20),
          child: Container(
            height:810,
            width: MediaQuery.of(context).size.width * .716,
            child: PageViewWidget(
              firstWidget:  Container(
                  height: 747,
                width: MediaQuery.of(context).size.width * .716,
                color: Colors.white,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 40),
                        child: Container(
                          height: 350,

                          width: 435,
                          //color: Colors.blue,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 26,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          border: Border.all(width: 1,color: Color(0xFF696969))
                                      ),
                                      child:  Icon(Icons.add,color: Color(0xFF696969),
                                      )),
                                  SizedBox(width: 14,),
                                  Text("Add New Stock",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        fontFamily: "Inter",
                                        color: Color(0xFF696969)
                                    ),)
                                ],
                              ),

                              SizedBox(height: 40,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Card No",
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
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.cardnumberforfirstpageAddInventory,
                                          decoration: InputDecoration(
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
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                                        height: 30.0, // Set the desired height for the TextField
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                        ),
                                        child: TextField(
                                          controller: ivm.dateforfirstpageAddInventory,
                                          onTap: (){
                                            ivm.pickDate(context);
                                          },
                                          decoration: InputDecoration(
                                            hintText: 'Tap to pick date',
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
                                    "Stock No",
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
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.stocknumberforfirstpageAddInventory,
                                          decoration: InputDecoration(
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
                                  Text(
                                    "Aircraft",
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
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          enabled: false,
                                          controller: ivm.aircraftforfirstpageAddInventory,
                                          decoration: InputDecoration(
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
                                  Text(
                                    "Nomenclature",
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
                                      width: 300,// Set the desired height for the TextField
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Center(
                                        child: TextField(
                                          controller: ivm.nomenclatureforfirstpageAddInventory,
                                          decoration: InputDecoration(
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
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black54
                                  ),
                                  shape: BoxShape.rectangle
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15
                                    ),
                                    child: Icon(Icons.camera_rounded),
                                  ),
                                  Text("Drag Image here"),
                                  Text("or"),
                                  Text("Browse Image",style: TextStyle(
                                      color: Color(0xff448DF2)
                                  ),),
                                ],
                              ),
                            ),
                            SizedBox(height: 50,),
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width*0.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal: 20
                                      ),
                                      child: Text('Cancel'),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      ivm.create_stock_record(context);

                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff1366D9),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10,
                                            horizontal: 20
                                        ),
                                        child: Text('Add Item',style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ]
                )
            ),
                secondWidget: Container(
                  // height: 747,
                  width: MediaQuery.of(context).size.width * .716,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,top: 20,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Add Stock History'),
                        /*DropdownButton<String>(
                          value: ivm.dropvalue.toString(),
                          icon: Icon(Icons.menu,color: Colors.black,),
                          underline: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                          style: TextStyle(
                              color: Colors.black
                          ),
                          onChanged: (String?  value){
                            ivm.dropdownbuttonvaluechange(value!);
                          },
                          items: [
                            DropdownMenuItem<String>(
                                value: "Received",
                                child: Text("Received")),
                            DropdownMenuItem<String>(
                                value: "Expenditure",
                                child: Text("Expenditure"))

                          ],
                        ),*/
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
                                            ),
                                            child: Center(
                                              child: TextField(
                                                onTap: (){
                                                  ivm.pickDateForHistory(context);
                                                },
                                                controller: ivm.dateforsecondpageAddInventory,
                                                decoration: InputDecoration(
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
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller: ivm.quantityforsecondpageAddInventory,
                                                decoration: InputDecoration(
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
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller: ivm.vouchernumberforsecondpageAddInventory,
                                                decoration: InputDecoration(
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
                                        Text(ivm.selectedHistoryStatus.toString(),
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
                                            ),
                                            child: Center(
                                              child: DropdownButton<String>(
                                                value: ivm.selectedHistoryStatus,

                                                
                                                style: TextStyle(
                                                    color: Colors.black
                                                ),
                                                onChanged: (String?  value){
                                                  ivm.updateSelectedHistoryStatus(value!);
                                                },
                                                items: ivm.historyStatus.map((e) => DropdownMenuItem<String>(
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
                                            ),
                                            child: Center(
                                              child: TextField(
                                                controller: ivm.vouchernumberforsecondpageAddInventory,
                                                decoration: InputDecoration(
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
                                        Text(ivm.selectedHistoryStatus.toString(),
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
                                            ),
                                            child: Center(
                                                child: DropdownButton<String>(
                                                  value: ivm.selectedHistoryStatus,


                                                  style: TextStyle(
                                                      color: Colors.black
                                                  ),
                                                  onChanged: (String?  value){
                                                    ivm.updateSelectedHistoryStatus(value!);
                                                  },
                                                  items: ivm.historyStatus.map((e) => DropdownMenuItem<String>(
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

                          ],
                        ),
                        SizedBox(height: 70,),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: 500,

                            child: SingleChildScrollView(

                              child: Column(
                                children: [
                                  PaginatedDataTable(

                                    columns: [
                                      // DataColumn(label: SizedBox.shrink()),
                                      const DataColumn(label: Text("Date",style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF797979)
                                      ),),),  DataColumn(label: SizedBox.shrink()),
                                      const DataColumn(label: Text("Quantity",style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF797979)
                                      ),),),  DataColumn(label: SizedBox.shrink()),
                                      const DataColumn(label: Text("Voucher No",style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF797979)
                                      ),),),  DataColumn(label: SizedBox.shrink()),
                                      const DataColumn(label: Text("Received",style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF797979)
                                      ),),),  DataColumn(label: SizedBox.shrink()),
                                      const DataColumn(label: Text("expenditure",style: TextStyle(
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Color(0xFF797979)
                                      ),),),
                                    ],
                                    source: DataClass(),
                                    rowsPerPage: 50,
                                    columnSpacing: 60,


                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],),
                  ),


                ),

            )

          ),
        );

      }
    );
  }
}

