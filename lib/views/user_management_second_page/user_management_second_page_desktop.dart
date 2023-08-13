import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class UsermanagementSecondPagedesktop extends StatefulWidget {
  const UsermanagementSecondPagedesktop({Key? key}) : super(key: key);

  @override
  State<UsermanagementSecondPagedesktop> createState() => _UsermanagementsecondPagedesktopState();
}

class _UsermanagementsecondPagedesktopState extends State<UsermanagementSecondPagedesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 62,
              width: MediaQuery.of(context).size.width*.775,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.menu,color: Color(0xFF696969),size: 22,),
                    SizedBox(width: 14,),
                    Text("User Management",
                      style: TextStyle(
                          color: Color(0xFF696969),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inter"
                      ),)
                  ],
                ),
              )

          ),
          SizedBox(height: 17,),
          Container(
            height: 779,
            width: MediaQuery.of(context).size.width*.745,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18,top: 39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                            child: Row(

                              children: [
                                Icon(Icons.arrow_back_ios_new,
                                color: Colors.black,),
                                SizedBox(width: 15,),
                                Text("mamunrashid80049@gmail.com",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                                ),)
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              height: 33.81,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFE7E7),
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Icon(Icons.delete_outline_rounded,color: Color(0xFFE70707),)),
                          )
                        ],
                      ),
                ),

                  SizedBox(height: 33,),
                  Container(
                    height: 155,
                    width: MediaQuery.of(context).size.width*.716,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1,color: Color(0xFF3E6ADD))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 55,bottom: 54),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal
                          ,
                        itemCount: 8,
                          itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 17,right: 17),
                            child: Container(
                              height: 46,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25,right: 25,top: 6),
                                child: index%2==0?Text("ncbiyf",
                                  style: TextStyle(
                                      color: Color(0xFF323232),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      fontFamily: "Inter"
                                  ),):Text("ncqwuudgiqeu-qkdhff",
                                  style: TextStyle(
                                      color: Color(0xFF323232),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      fontFamily: "Inter"
                                  ),),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,

                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(width: 1,color:  Color(0xFF959494),)
                              ),

                            ),
                          );
                          }),
                    ),
                  ),
                  SizedBox(height: 64,),
                  Container(
                      height:48,
                      width:142,
                    decoration: BoxDecoration(
                        color: Color(0xFF1366D9),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                      child:Center(
                        child: Text("Update",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter'
                          ),),
                      )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
