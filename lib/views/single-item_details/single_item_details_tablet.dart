import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Single_Item_Details_Tablet_View extends StatefulWidget {
  const Single_Item_Details_Tablet_View({Key? key}) : super(key: key);

  @override
  State<Single_Item_Details_Tablet_View> createState() => _Single_Item_Details_Tablet_ViewState();
}

class _Single_Item_Details_Tablet_ViewState extends State<Single_Item_Details_Tablet_View> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 765,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 62,
            color: Colors.white,
            width: MediaQuery.of(context).size.width*.775,
           child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

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
                  Text("New Item",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: "Inter",
                        color: Color(0xFF696969)
                    ),)
                ],
              ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 47,),
                    Text("Maggi",
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
                    Row(
                      children: [
                        Text("Product Name",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xFF383E49)
                          ),),
                        SizedBox(width: 100,),

                        Text("Maggi",
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
                      children: [
                        Text("Product ID",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xFF383E49)
                          ),),
                        SizedBox(width: 125,),

                        Text("7453936",
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
                      children: [
                        Text("Product Category",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xFF383E49)
                          ),),
                        SizedBox(width: 75,),

                        Text("Instant Food",
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
                      children: [
                        Text("expiry Date",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xFF383E49)
                          ),),
                        SizedBox(width: 118,),


                        Text("13/1/2023",
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
                      children: [
                        Text("Treshold Value",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xFF383E49)
                          ),),
                        SizedBox(width: 95,),

                        Text("35457578",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Inter",
                              color: Color(0xFF383E49)
                          ),),
                      ],
                    ),
                    SizedBox(height: 49,),
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
                    )









                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 0),
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
                            image: AssetImage("assets/image_files/image 6.png"),

                          )

                      ),
                    ),
                    SizedBox(height: 62,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width*.2,

                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Opening Stock",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  color: Color(0xFF5D6679)
                              ),),
                            Flexible(
                              child: Text("40",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Color(0xFF5D6679)
                                ),),
                            ),


                          ],
                        ),

                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width*.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Remainig Stock",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  color: Color(0xFF5D6679)
                              ),),

                            Flexible(
                              child: Text("34",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Color(0xFF5D6679)
                                ),),
                            ),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width*.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("On the way",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  color: Color(0xFF5D6679)
                              ),),

                            Flexible(
                              child: Text("20",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Color(0xFF5D6679)
                                ),),
                            ),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width*.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Threshold Value",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Inter",
                                  color: Color(0xFF5D6679)
                              ),),

                            Flexible(
                              child: Text("20",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Inter",
                                    color: Color(0xFF5D6679)
                                ),),
                            ),


                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
