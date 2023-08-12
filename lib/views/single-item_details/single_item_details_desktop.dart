import 'package:aircraft_inventory_management/res/endpoints.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../add_inventory_item_view/paginated_table_class.dart';

class Single_Item_Details_Desktop_View extends StatefulWidget {
  const Single_Item_Details_Desktop_View({Key? key}) : super(key: key);

  @override
  State<Single_Item_Details_Desktop_View> createState() => _Single_Item_Details_Desktop_ViewState();
}

class _Single_Item_Details_Desktop_ViewState extends State<Single_Item_Details_Desktop_View> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SingleItemViewModel>(
      builder: (context, svm, _) {
        return  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20,bottom: 30),
                    child: Container(
                      height: 765,
                      width: MediaQuery.of(context).size.width*.729,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10
                        ))

                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Column(

                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:20),
                                        child: Row(

                                          children: [
                                            IconButton(onPressed: (){
                                              Provider.of<MyProviderForInventoryView>(context, listen: false).changePage(0);
                                            }, icon: Icon(Icons.arrow_back,color: Colors.black,)),

                                            Text("Item Details",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Colors.black
                                              ),)
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 47,),
                                      Text("${svm.stockRecord.description}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Inter",
                                        color: Color(0xFF383E49)
                                      ),),
                                      SizedBox(height: 50,),
                                      Text("Primery Details",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Inter",
                                            color: Color(0xFF383E49)
                                        ),),
                                      SizedBox(height: 18,),

                                      Container(
                                        width: 500,
                                        //MediaQuery.of(context).size.width*.2,
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                                children: [
                                                  Text("Card No",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),


                                                  Text("${svm.stockRecord.card_no}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),
                                                ],
                                              ),


                                            ),
                                            SizedBox(height: 32,),
                                            Container(

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Stock No",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),


                                                  Text("${svm.stockRecord.stock_no}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 32,),
                                            Container(

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Quantity",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),


                                                  Text("${svm.stockRecord.balance}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 32,),
                                            Container(

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Issued At",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),

                                                  Text("${stringToDate(svm.stockRecord.date)}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: "Inter",
                                                        color: Color(0xFF383E49)
                                                    ),),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Column(


                                    children: [
                                      SizedBox(height: 52,),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,

                                        children: [
                                          Container(

                                            height: 40,
                                            width: 77,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(4)),
                                              border: Border.all(width: 1,color: Color(0xFFD0D5DD))
                                            ),
                                            child: Center(
                                              child: Text("Export",
                                              style: TextStyle(
                                                fontFamily: "Inter",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xFF5D6679)
                                              ),),
                                            ),
                                          ),
                                          SizedBox(width: 12,),
                                          GestureDetector(
                                            onTap: (){
                                              Provider.of<MyProviderForInventoryView>(context, listen: false).changePage(3);

                                            },
                                            child: Container(

                                              height: 40,
                                              width: 77,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                                  border: Border.all(width: 1,color: Color(0xFFD0D5DD))
                                              ),
                                              child:Padding(
                                                padding: const EdgeInsets.only(left: 10,right: 10),
                                                child: Row(
                                                  children: [
                                                    FaIcon(FontAwesomeIcons.pen,color: Color(0xFF5D6679),size: 13,),
                                                    SizedBox(width: 8,),
                                                    Text("Edit",
                                                        style: TextStyle(
                                                            fontFamily: "Inter",
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 14,
                                                            color: Color(0xFF5D6679)
                                                        ),),
                                                  ],
                                                ),
                                              ),

                                            ),
                                          ),

                                          SizedBox(width: 12,),
                                          GestureDetector(
                                            onTap: (){
                                              Provider.of<MyProviderForInventoryView>(context, listen: false).changePage(2);
                                            },
                                            child: Container(
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                                  border: Border.all(width: 1,color: Color(0xFFD0D5DD))
                                              ),
                                              child:Padding(
                                                padding: const EdgeInsets.only(left: 10,right: 10),
                                                child: Row(
                                                  children: [
                                                    FaIcon(FontAwesomeIcons.add,color: Color(0xFF5D6679),size: 13,),
                                                    SizedBox(width: 8,),
                                                    Text("Add Stock History",
                                                      style: TextStyle(
                                                          fontFamily: "Inter",
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14,
                                                          color: Color(0xFF5D6679)
                                                      ),),
                                                  ],
                                                ),
                                              ),

                                            ),
                                          )

                                        ],
                                      ),
                                      SizedBox(height: 79,),
                                      Container(
                                        height: 170,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1,color: Color(0xFF9D9D9D)),
                                          image: DecorationImage(
                                            image: svm.stockRecord.image==null? AssetImage("assets/image_files/image 6.png"):NetworkImage('${EndPoints().image_base_url}${svm.stockRecord.image}') as ImageProvider,

                                          )

                                        ),
                                      ),
                                      SizedBox(height: 62,),


                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 40,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  cardTheme: CardTheme(
                                    color: Colors.white,

                                    elevation: 0, // remove shadow
                                    margin: const EdgeInsets.all(0), // reset margin
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16), // Change radius
                                    ),
                                  ),
                                ),
                                child: PaginatedDataTable(


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
                                    DataColumn(label: SizedBox.shrink()),
                                    const DataColumn(label: Text("Uploaded",style: TextStyle(
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF797979)
                                    ),),),
                                  ],
                                  source: DataClass(data: svm.stockHistory),
                                  rowsPerPage: 50,
                                  columnSpacing: 54,

                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );

                  /*PaginatedDataTable(

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
                    DataColumn(label: SizedBox.shrink()),
                    const DataColumn(label: Text("Uploaded",style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF797979)
                    ),),),
                  ],
                  source: DataClass(data: svm.stockHistory),
                  rowsPerPage: 50,
                  columnSpacing: 60,

                  )*/







      }
    );
  }
}
