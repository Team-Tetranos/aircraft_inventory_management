import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class OnBoardSecondScreenView extends StatelessWidget {
  const OnBoardSecondScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFD1E6FD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 115,
                width: 115,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image_files/Group 1289 (2).png")
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6,),
                    Text("Aircraft",

                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 35,
                          fontFamily: "Inter",
                          color: Color(0xFF01543E)
                      ),),
                    Text("Inventory Management",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 35,
                          fontFamily: "Inter",
                          color: Color(0xFF01543E)
                      ),),
                    SizedBox(height: 12,),
                    Text("An Initiative of Bangladesh Army Aviation Group",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "Inter",
                          color: Color(0xFF4D4D4D)
                      ),),
                    SizedBox(height: 117,),
                    Text("This is just a dummy place",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          fontFamily: "Inter",
                          color: Color(0xFF4D4D4D)
                      ),),
                    SizedBox(height: 191,),
                    Container(
                        height:35,
                        width:98,
                        color: Color(0xFF1366D9),
                        child:Center(
                          child: Text("Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter'
                            ),),
                        )
                    ),

                  ],
                ),
              )



            ],
          ),
          Container(
            height: 503,
            width: MediaQuery.of(context).size.width*.488,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFAEACAC),
                  radius: 15,
                  child: Center(child: Icon(Icons.arrow_left_outlined,color: Colors.white,)),
                ),
                Container(
                  height: 365,
                  width: MediaQuery.of(context).size.width*.38,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image_files/Frame 35 1.png"),
                      //fit: BoxFit.cover
                    )
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xFF292828),
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),

          )
        ],
      ),
    );
  }
}
