import 'package:aircraft_inventory_management/res/endpoints.dart';
import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

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
        return SingleChildScrollView(
          child: Container(

            //height: 865,
            width: MediaQuery.of(context).size.width*.775,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Container(

                    height: 62,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width*.775,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(

                        children: [

                          Text("Item Details",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                fontFamily: "Inter",
                                color: Color(0xFF696969)
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32,),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    height: 765,
                    width: MediaQuery.of(context).size.width*.729,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Column(

                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 47,),
                              Text("${svm.aircraftitem.nomenclature}",
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
                                width: MediaQuery.of(context).size.width*.2,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text("Part No",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 100,),

                                        Text("${svm.aircraftitem.partNo}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Card No",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 125,),

                                        Text("${svm.aircraftitem.cardNo}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Quantity",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 75,),

                                        Text("${svm.aircraftitem.quantity}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Expiry Date",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 118,),


                                        Text("${stringToDate(svm.aircraftitem.expire)}",

                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Manufacturer",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 95,),

                                        Text("${svm.aircraftitem.manufacturer}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),


                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("A/U",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 95,),

                                        Text("${svm.aircraftitem.astronomicalUnit}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),
                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Received",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 95,),

                                        Text("${svm.aircraftitem.receivedDiOrg}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),

                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Expenditure",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 95,),

                                        Text("${svm.aircraftitem.expenditure}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),

                                    SizedBox(height: 32,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("RMK",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                        SizedBox(width: 95,),

                                        Text("${svm.aircraftitem.rmk}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Inter",
                                              color: Color(0xFF383E49)
                                          ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                              /*SizedBox(height: 49,),
                              SizedBox(height: 49,),
                              Text("Stoch Location",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Inter",
                                    color: Color(0xFF48505E)
                                ),),
                              SizedBox(height: 19,),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width*.45,
                                color: Color(0xFFF0F1F3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Store Name",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Inter",
                                          color: Color(0xFF5D6679)
                                      ),),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: Text("Stock In Hand",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Inter",
                                            color: Color(0xFF5D6679)
                                        ),),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 18,),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width*.45,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sulur Branch",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Inter",
                                          color: Color(0xFF5D6679)
                                      ),),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: Text("15",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Inter",
                                            color: Color(0xFF5D6679)
                                        ),),
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 18,),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width*.45,

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("another Branch",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "Inter",
                                          color: Color(0xFF5D6679)
                                      ),),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 25),
                                      child: Text("19",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "Inter",
                                            color: Color(0xFF5D6679)
                                        ),),
                                    ),

                                  ],
                                ),
                              )*/









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
                                  Container(

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
                                    image: svm.aircraftitem.image==null? AssetImage("assets/image_files/image 6.png"):NetworkImage('${EndPoints().image_base_url}${svm.aircraftitem.image}') as ImageProvider,

                                  )

                                ),
                              ),
                              SizedBox(height: 62,),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
