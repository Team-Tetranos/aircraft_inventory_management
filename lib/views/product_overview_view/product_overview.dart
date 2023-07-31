import 'package:aircraft_inventory_management/res/common_widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product_Overview_View extends StatefulWidget {
  const Product_Overview_View({Key? key}) : super(key: key);

  @override
  State<Product_Overview_View> createState() => _Product_Overview_ViewState();
}

class _Product_Overview_ViewState extends State<Product_Overview_View> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 865,
      width: MediaQuery.of(context).size.width*.775,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 62,
            color: Colors.white,
            width: MediaQuery.of(context).size.width*.775,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                 Container(
                   height: 26,
                   width: 24,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(5)),
                     border: Border.all(width: 1,color: Color(0xFF696969))
                   ),
                   child:  Icon(Icons.menu,color: Color(0xFF696969),
                 )),
                  SizedBox(width: 14,),
                  Text("Product Overview",
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
          SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              height: 765,
              width: MediaQuery.of(context).size.width*.729,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 40,top: 60),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Common_Text(fontWeight: FontWeight.w500,
                                  text: "Brand",
                                  color: Color(0xFFCB2315),
                                  fontsize: 16,
                                  fontfamily:"Inter"),
                              SizedBox(height: 33,),
                              Common_Text(fontWeight: FontWeight.w500,
                                  text: "Category",
                                  color: Color(0xFFCB2315),
                                  fontsize: 16,
                                  fontfamily:"Inter"),
                              SizedBox(height: 38,),
                              Common_Text(fontWeight: FontWeight.w500,
                                  text: "Product ID",
                                  color: Color(0xFFCB2315),
                                  fontsize: 16,
                                  fontfamily:"Inter"),
                              SizedBox(height: 29,),
                              Common_Text(fontWeight: FontWeight.w500,
                                  text: "Released Date",
                                  color: Color(0xFF858D9D),
                                  fontsize: 16,
                                  fontfamily:"Inter"),
                              SizedBox(height: 25,),
                              Common_Text(fontWeight: FontWeight.w500,
                                  text: "Expiry Date",
                                  color: Color(0xFF858D9D),
                                  fontsize: 16,
                                  fontfamily:"Inter"),
                              SizedBox(height: 19,),
                              Common_Text(fontWeight: FontWeight.w500,
                                  text: "Threshold Value",
                                  color: Color(0xFF858D9D),
                                  fontsize: 16,
                                  fontfamily:"Inter"),


                            ],
                          ),
                        ),
                        SizedBox(width: 36,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 36,
                              width: MediaQuery.of(context).size.width*.25,
                              child: TextField(

                                decoration: InputDecoration(

                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(width: 1,color: Color(0xFFB0B0B0))),
                                  hintText: "select or Type Brand",
                                  hintStyle: TextStyle(
                                    color: Color(0xFF858D9D),

                                  )
                                 )
                                ),
                            ),
                            SizedBox(height: 22,),
                            SizedBox(
                              height: 36,
                              width:  MediaQuery.of(context).size.width*.25,
                              child: TextField(

                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFFB0B0B0))),
                                      hintText: "select or Type Category",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF858D9D),

                                      )
                                  )
                              ),
                            ),
                            SizedBox(height: 22,),
                            SizedBox(
                              width:  MediaQuery.of(context).size.width*.25,
                              height: 36,
                              child: TextField(

                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1,color: Color(0xFFB0B0B0))),
                                      hintText: "select or Type ID",
                                      hintStyle: TextStyle(
                                        color: Color(0xFF858D9D),

                                      )
                                  )
                              ),
                            ),
                            SizedBox(height: 22,),
                            Common_Text(fontWeight: FontWeight.w500,
                                text: "3/1/2023",
                                color: Color(0xFF5D6679),
                                fontsize: 16,
                                fontfamily: "Inter"),
                            SizedBox(height: 22,),
                            Common_Text(fontWeight: FontWeight.w500,
                                text: "3/2/2023",
                                color: Color(0xFF5D6679),
                                fontsize: 16,
                                fontfamily: "Inter"),
                            SizedBox(height: 22,),
                            Common_Text(fontWeight: FontWeight.w500,
                                text: "12",
                                color: Color(0xFF5D6679),
                                fontsize: 16,
                                fontfamily: "Inter"),
                            SizedBox(height: 40,),

                          ],
                        ),
                        SizedBox(width: 259,),
                        Container(
                          height: 170,
                          width: MediaQuery.of(context).size.width*.118,
                          color: Colors.blue,
                        )

                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Common_Text(fontWeight:FontWeight.w500,
                                text: "Product insight",
                                color: Colors.black,
                                fontsize: 20,
                                fontfamily: "Inter"),
                            SizedBox(height: 16,),
                            Container(
                              height: 325,
                              width: MediaQuery.of(context).size.width*.4729,
                              color: Colors.blue,
                            )


                          ],
                        ),
                        SizedBox(width: 73,),
                        Container(
                          height: 193,
                          width: MediaQuery.of(context).size.width*.1708,

                          child: Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Common_Text(fontWeight :FontWeight.w400,
                                        text: "Opening Stock",
                                        color: Color(0xFF858D9D),
                                        fontsize: 16,
                                        fontfamily: "Inter"),
                                    Common_Text(fontWeight :FontWeight.w500,
                                        text: "40",
                                        color: Color(0xFF5D6679),
                                        fontsize: 16,
                                        fontfamily: "Inter")
                                  ],
                                ),
                                SizedBox(height: 33,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Common_Text(fontWeight :FontWeight.w400,
                                        text: "Remaining Stock",
                                        color: Color(0xFF858D9D),
                                        fontsize: 16,
                                        fontfamily: "Inter"),
                                    Common_Text(fontWeight :FontWeight.w500,
                                        text: "40",
                                        color: Color(0xFF5D6679),
                                        fontsize: 16,
                                        fontfamily: "Inter")
                                  ],
                                ),
                                SizedBox(height: 33,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Common_Text(fontWeight :FontWeight.w400,
                                        text: "On the way",
                                        color: Color(0xFF858D9D),
                                        fontsize: 16,
                                        fontfamily: "Inter"),
                                    Common_Text(fontWeight :FontWeight.w500,
                                        text: "36",
                                        color: Color(0xFF5D6679),
                                        fontsize: 16,
                                        fontfamily: "Inter")
                                  ],
                                ),
                                SizedBox(height: 33,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Common_Text(fontWeight :FontWeight.w400,
                                        text: "Threshold value",
                                        color: Color(0xFF858D9D),
                                        fontsize: 16,
                                        fontfamily: "Inter"),
                                    Common_Text(fontWeight :FontWeight.w500,
                                        text: "12",
                                        color: Color(0xFF5D6679),
                                        fontsize: 16,
                                        fontfamily: "Inter")
                                  ],
                                )
                              ]
                            ),
                          ),
                        )

                      ],
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
