import 'package:aircraft_inventory_management/view_models/help_and_support_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HelpAndSupportViewForDesktop extends StatefulWidget {
  const HelpAndSupportViewForDesktop({Key? key}) : super(key: key);

  @override
  State<HelpAndSupportViewForDesktop> createState() => _helpAndSupportViewState();
}

class _helpAndSupportViewState extends State<HelpAndSupportViewForDesktop> {

  @override
  Widget build(BuildContext context) {
    return Consumer<HelpAndSupportViewModel>(
      builder: (context,hsvm,_) {
        return Container(

          child: SingleChildScrollView(
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
                          Icon(Icons.question_mark,color: Color(0xFF696969),size: 22,),
                          SizedBox(width: 14,),
                          Text("Help & Support",
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Container(
                        height: 207,
                        width: MediaQuery.of(context).size.width*.707,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("WELCOME TO GLOBAL AIRCRAFT SUPPORT",
                                    style: TextStyle(
                                        color: Colors.black,
                                        // fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    ),),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 52,
                                          width: MediaQuery.of(context).size.width*.277,
                                          decoration: BoxDecoration(
                                              color:Colors.white,
                                              border: Border.all(width: 1,color: Color(0xFFECECEC)),
                                              borderRadius: BorderRadius.circular(35)
                                          ),
                                          child: TextField(


                                            decoration: const InputDecoration(
                                                hintStyle: TextStyle(
                                                    color: Color(0xFF858D9D),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Inter'
                                                ),

                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide.none
                                                ),
                                                contentPadding: EdgeInsets.only(top: 6),
                                                prefixIcon: Icon(Icons.search,
                                                  color: Color(0xFF858D9D),
                                                  size: 20,),
                                                hintText: "Search product,supplier,order"
                                            ),

                                          )
                                      ),
                                      SizedBox(width: 38,),
                                      Container(
                                        height: 41,
                                        width: MediaQuery.of(context).size.width*.0833,
                                        child: Center(
                                          child: Text("Try Now",
                                            style: TextStyle(
                                                color: Colors.white
                                            ),),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(35)),
                                            color: Color(0xFF1366D9)
                                        ),
                                      )

                                    ],
                                  ),
                                )

                              ],
                            ),
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width*.211,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/image_files/image 9.png"),
                                      fit: BoxFit.cover
                                  )
                              ),
                            )

                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                            color: Colors.white
                        )


                    ),
                    SizedBox(height: 40,),
                    Text("Need Help? We've got your feeddback",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: "Inter",
                      ),),
                    SizedBox(height: 30,),
                    Container(
                      height:800,
                      width: MediaQuery.of(context).size.width*.7,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (contex,index){
                            return Card(
                              color: Color(0xFF052169),
                              child: ExpansionTile(
                                iconColor: Colors.white,
                                collapsedIconColor: Colors.white,
                                title: Text("pane ${index}",style: TextStyle(
                                  color: Colors.white
                              ),),
                                children: [
                                  Container(
                                    height: 200,
                                    width: MediaQuery.of(context).size.width*.7,
                                    color: Colors.white,
                                  )
                                ],

                              ),
                            );
                          }),
                    )
                  ],
                )
               /* Container(
                  //height: 400,
                  width: MediaQuery.of(context).size.width*.7,
                  child: ExpansionPanelList(
                  expansionCallback: (int index,bool isExpanded){
                    print("lol");

                    setState(() {
                      expansionlist[index].isExpanded = ! isExpanded;

                    });

                    *//*hsvm.expansionlist[index].isEx = ! isEx;
                    hsvm.notifyListeners();*//*
                  },
                    children: hsvm.expansionlist.map<ExpansionPanel>((dataclass data) {
                      return ExpansionPanel(headerBuilder: (BuildContext context,bool isExpanded)
                      {
                        return ListTile(
                          tileColor: Color(0xFF052169),
                          title: Text(data.panel,style: TextStyle(
                            color: Colors.white
                          ),),
                        );
                      }
                          , body: Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width*.3,

                            color: Colors.white,
                          ));
                    }).toList(),
                  ),
                )*/




              ],
            ),
          ),
        );
      }
    );
  }
}
