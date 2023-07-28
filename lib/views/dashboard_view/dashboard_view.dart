import 'package:aircraft_inventory_management/views/dashboard_view/dashboard_widget/container_for_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDashBoardView extends StatefulWidget {
  const MyDashBoardView({Key? key}) : super(key: key);

  @override
  State<MyDashBoardView> createState() => _MyDashBoardViewState();
}

class _MyDashBoardViewState extends State<MyDashBoardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 865,
        //color: Colors.purple,
        child: Column(

            children: [
             Container(
                  height: 142,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .774,

                  child: Stack(
                    children:[   ListView.builder(

                                //shrinkWrap: true,

                                scrollDirection: Axis.horizontal,
                                itemCount: 30,

                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:  EdgeInsets.only(
                                        left: index==0?40:21,right: index==29?21:0,top: 31,bottom: 31),
                                    child: index==0?MyDashBoardContainer(
                                      bordercolor: null,
                                      border: 0,
                                      width: .1,
                                      height: 79,
                                      color: Color(0xFF3079DE),
                                      blur: 0,
                                      xCoordinate: 0,
                                      yCoordinate: 0,
                                      radius: 10,
                                      shadowcolor: null,
                                      mywidget: Center(
                                        child: Text("All",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Inter",
                                              fontSize: 26,
                                              fontWeight: FontWeight.w600
                                          ),),
                                      )
                                  ):MyDashBoardContainer(
                                      bordercolor: null,
                                      border: 0,
                                        width: .123,
                                        height: 79,
                                        color: Color(0xFFFFFDFD),
                                        blur: 25,
                                        xCoordinate: -2,
                                        yCoordinate: 4,
                                        radius: 10,
                                        shadowcolor: Color(0xFF000000).withOpacity(.1),
                                        mywidget: Padding(
                                          padding: const EdgeInsets.only(left: 15.58,right: 7),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 46.17,
                                                width: MediaQuery.of(context).size.width*.0345,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTis6NBWZFYZjOXRVdTXRi2iBqjOZICphHHNw&usqp=CAU"),
                                                    fit: BoxFit.cover
                                                  )
                                                ),
                                              ),
                                              SizedBox(width: 13,),
                                              Text("Diamond DA4"
                                                  ,
                                              style: TextStyle(
                                                color: Color(0xFF387BD7),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                fontFamily: "Inter"
                                              ),)
                                            ],
                                          ),
                                        )
                                    ),
                                  );
                                },

                              ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Center(child: Icon(Icons.arrow_forward_ios,color: Colors.grey,)),
                        radius: 25,

                      ),
                    )

          ]
                  ),



                ),

              Padding(
                padding: const EdgeInsets.only(),
                child: Row(
                  children: [
                    MyDashBoardContainer(width: .35,
                        height: 220,
                        color: Colors.white,
                        blur: 0,
                        xCoordinate: 0,
                        yCoordinate: 0,
                        radius: 10,
                        shadowcolor: null,
                        mywidget: Padding(
                          padding: const EdgeInsets.only(left: 40,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 27,),
                              Text("Sales Overview",style: TextStyle(
                                color: Color(0xFF383E49),
                                fontFamily: "Inter",
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 22,),
                              Row(
                                children: [
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                            color: Color(0xFFDAE9FA)
                                          ),
                                          child: Icon(Icons.clean_hands_outlined,
                                            color: Color(0xFF006BFF),),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Total Catagory",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              fontFamily: "Inter",
                                              color: Color(0xFF96989B)
                                            ),),
                                            Text("750",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFE2E1F5)
                                          ),
                                          child: Icon(Icons.add_chart,
                                            color: Color(0xFF817AF3),),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Total Revenue",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("75890",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 22,),
                              Row(
                                children: [
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFFDF0C3)
                                          ),
                                          child: Icon(Icons.download,
                                            size: 22,
                                            color: Color(0xFFEAB912),)
                                          ,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Total Cost",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("75890",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFCEFCD2)
                                          ),
                                          child: Icon(Icons.area_chart,
                                            size: 20,
                                            color: Color(0xFF06DA3F),),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Total Profit",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("7589",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                        border: 1,
                        bordercolor: Color(0xFFE8E8E8)),
                    SizedBox(width: 22,),
                    MyDashBoardContainer(width: .35,
                        height: 220,
                        color: Colors.white,
                        blur: 0,
                        xCoordinate: 0,
                        yCoordinate: 0,
                        radius: 10,
                        shadowcolor: null,
                        mywidget: Padding(
                          padding: const EdgeInsets.only(left: 40,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 27,),
                              Text("Purchase Overview",style: TextStyle(
                                  color: Color(0xFF383E49),
                                  fontFamily: "Inter",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 22,),
                              Row(
                                children: [
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFDAE9FA)
                                          ),
                                          child: Icon(Icons.shopping_bag_outlined,
                                            color: Color(0xFF009ED8),),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("No of Purchase",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("750",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFE2E1F5)
                                          ),
                                          child: Icon(Icons.leave_bags_at_home_outlined,
                                            color: Color(0xFF817AF3),),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Cancel Order",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("75890",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 22,),
                              Row(
                                children: [
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,


                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFFDF0C3)
                                          ),
                                          child: Icon(Icons.download,
                                            size: 22,
                                            color: Color(0xFFEAB912),)
                                          ,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Cost",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("75890",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 50,),
                                  Container(
                                    height: 47,
                                    width: MediaQuery.of(context).size.width*.35*.35,

                                    child:
                                    Row(
                                      children: [
                                        Container(
                                          height: 36.83,
                                          width: MediaQuery.of(context).size.width*.027,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              color: Color(0xFFCEFCD2)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3),
                                            child: CircleAvatar(
                                              backgroundColor: Color(0xFF06DA3F),

                                              child: Icon(Icons.percent,
                                                size: 15,
                                                color: Colors.white,),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Return",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF96989B)
                                              ),),
                                            Text("15000",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20,
                                                  fontFamily: "Inter",
                                                  color: Color(0xFF454444)
                                              ),),

                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        ),
                        border: 1,
                        bordercolor: Color(0xFFE8E8E8))
                  ],
                ),
              ),
              SizedBox(height: 19,),
              Row(
                children: [
                  MyDashBoardContainer(width: .229,
                      height: 225,
                      color: Colors.white,
                      blur: 0,
                      xCoordinate: 0,
                      yCoordinate: 0,
                      radius: 10
                      , shadowcolor: null,
                      mywidget: Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Inventory Summary",style: TextStyle(
                              color: Color(0xFF383E49),
                              fontFamily: "Inter",
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Container(
                                  height: 133,
                                  width: MediaQuery.of(context).size.width*.083,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF7F7F7),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 14,left: 17),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        FaIcon(FontAwesomeIcons.cubes,
                                          color: Color(0xFFF3BE07),),
                                        SizedBox(height: 3,),
                                        Text("Quantity in Hand",
                                          style: TextStyle(
                                            color: Color(0xFF96989B),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            fontFamily: "Inter",
                                          ),),
                                        SizedBox(height: 3,),
                                        Text("250",
                                          style: TextStyle(
                                            color: Color(0xFF454444),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            fontFamily: "Inter",
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 37,),
                                Container(
                                  height: 133,
                                  width: MediaQuery.of(context).size.width*.083,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF7F7F7),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:14,left: 17),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        FaIcon(FontAwesomeIcons.cubes,
                                          color: Color(0xFFFF36C6C),),
                                        SizedBox(height: 3,),
                                        Text("Will be recieved",
                                          style: TextStyle(
                                            color: Color(0xFF96989B),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            fontFamily: "Inter",
                                          ),),
                                        SizedBox(height: 3,),
                                        Text("250",
                                          style: TextStyle(
                                            color: Color(0xFF454444),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            fontFamily: "Inter",
                                          ),)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                      border: 1,
                      bordercolor: Color(0xFFE8E8E8)),
                  SizedBox(width: 21,),
                  MyDashBoardContainer(width: .229, height: 225,
                      bordercolor: Color(0xFFE8E8E8),
                      border: 1,
                      color: Colors.white,
                      blur: 0,
                      xCoordinate: 0,
                      yCoordinate: 0,
                      radius: 10,
                      shadowcolor: null,
                      mywidget: Padding(
                        padding: const EdgeInsets.only(top: 24,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Text("Product Details",
                              style: TextStyle(
                                color: Color(0xFF383E49),
                                fontFamily: "Inter",
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22,right: 22,top: 11),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Low stock Item",style: TextStyle(
                                    color: Color(0xFF96989B),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "Inter"
                                  ),),
                                 Text("5",
                                  style: TextStyle(
                                    color: Color(0xFF454444),
                                    fontFamily: "Inter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                  ),),

                                ],
                              ),),
                                Padding(
                                padding: const EdgeInsets.only(left: 22,right: 22,top: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Item Category",style: TextStyle(
                                color: Color(0xFF96989B),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: "Inter"
                            ),),
                          Text("20",
                              style: TextStyle(
                                  color: Color(0xFF454444),
                                  fontFamily: "Inter",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                              ),),

                          ],
                        ),
                            ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("No of Item",style: TextStyle(
                              color: Color(0xFF96989B),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: "Inter"
                          ),),
                         Text("750",
                            style: TextStyle(
                                color: Color(0xFF454444),
                                fontFamily: "Inter",
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                            ),),

                        ],
                      ),


                        ),
                        ]

                      ),

              )

                  ),
                  SizedBox(width: 21,),
                  MyDashBoardContainer(width: .229,
                      height: 225,
                      color: Colors.white,
                      blur: 0,
                      xCoordinate: 0,
                      yCoordinate: 0,
                      radius: 10
                      , shadowcolor: null,
                      mywidget: Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("User Details",style: TextStyle(
                                color: Color(0xFF383E49),
                                fontFamily: "Inter",
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Container(
                                  height: 133,
                                  width: MediaQuery.of(context).size.width*.083,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF7F7F7),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 14,left: 17),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        FaIcon(FontAwesomeIcons.peopleGroup,
                                          color: Color(0xFF34A853),),
                                        SizedBox(height: 3,),
                                        Text("Totla Customer",
                                          style: TextStyle(
                                            color: Color(0xFF96989B),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            fontFamily: "Inter",
                                          ),),
                                        SizedBox(height: 3,),
                                        Text("250",
                                          style: TextStyle(
                                            color: Color(0xFF454444),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            fontFamily: "Inter",
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 37,),
                                Container(
                                  height: 133,
                                  width: MediaQuery.of(context).size.width*.083,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF7F7F7),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:14,left: 17),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        FaIcon(FontAwesomeIcons.userGroup,
                                          color: Color(0xFF7269FF),),
                                        SizedBox(height: 3,),
                                        Text("total Suppliers",
                                          style: TextStyle(
                                            color: Color(0xFF96989B),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            fontFamily: "Inter",
                                          ),),
                                        SizedBox(height: 3,),
                                        Text("250",
                                          style: TextStyle(
                                            color: Color(0xFF454444),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                            fontFamily: "Inter",
                                          ),)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                      border: 1,
                      bordercolor: Color(0xFFE8E8E8)),


        ]
              )
    ]

    )
    );
  }
}
