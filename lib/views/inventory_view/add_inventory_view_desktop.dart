
import 'package:flutter/material.dart';

class AddInventoryView extends StatefulWidget {
   AddInventoryView({Key? key}) : super(key: key);

  @override
  State<AddInventoryView> createState() => _AddInventoryViewState();
}

class _AddInventoryViewState extends State<AddInventoryView> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 52,
          width: MediaQuery.of(context).size.width * .716,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.add_box_outlined),
                SizedBox(
                  width: 5,
                ),
                Text("New Item"),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 747,
          width: MediaQuery.of(context).size.width * .716,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 8,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Item ID",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Category",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Unit",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Quantity",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Weight",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Cost Price",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Expiry Date",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Threshold Value",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Select or Type Category',
                                    suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                height: 30.0, // Set the desired height for the TextField
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: InputBorder
                                        .none, // Remove the default TextField border
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            SizedBox(height: 35,),

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

                            SizedBox(height: 175,),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8
                              ),
                              child: Container(
                                height: 100,
                               width: MediaQuery.of(context).size.width*0.3,
                                child: Row(children: [
                                  Expanded(
                                      flex: 5,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Dimension",
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                                SizedBox(
                                                  height: 40,
                                                ),
                                                Text(
                                                  "Sell Price",
                                                  style: TextStyle(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                  height: 30.0, // Set the desired height for the TextField
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey),
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: '',
                                                      border: InputBorder
                                                          .none, // Remove the default TextField border
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                  height: 30.0, // Set the desired height for the TextField
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Colors.grey),
                                                  ),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: '',
                                                      border: InputBorder
                                                          .none, // Remove the default TextField border
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ],),
                              ),
                            ),

                            SizedBox(height: 50,),

                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
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
                                    Container(
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
                                  ],
                                ),
                              ),
                            )




                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
