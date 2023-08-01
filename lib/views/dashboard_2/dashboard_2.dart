import 'package:flutter/material.dart';

class SecondDashBoard extends StatefulWidget {
  const SecondDashBoard({Key? key}) : super(key: key);

  @override
  State<SecondDashBoard> createState() => _SecondDashBoardState();
}

class _SecondDashBoardState extends State<SecondDashBoard> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Container(
            height: 56,
            width: MediaQuery.of(context).size.width*.111,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(5)),

            ),
            child:Center(
              child: Text("Add Aircraft",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width*.227,
            height: 129,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(10),
                    spreadRadius: 0,
                    blurRadius: 25,
                    offset: Offset(-2,4), // changes position of shadow
                  ),
                ],
              ),
            child: Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Row(
                children: [
                 Container(
                   height: 78,
                   width: 84,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/2acc139b-8d65-4eb7-8788-fad993edf59a/dettuuf-d36c17cd-ce23-45aa-b736-a5bfe6e1a913.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzJhY2MxMzliLThkNjUtNGViNy04Nzg4LWZhZDk5M2VkZjU5YVwvZGV0dHV1Zi1kMzZjMTdjZC1jZTIzLTQ1YWEtYjczNi1hNWJmZTZlMWE5MTMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.fPAvycnP9Y6KXjXbHhbr0Xg57kF0YT3s-vQED-Girhk"),
                       fit: BoxFit.cover
                     )
                   ),
                 ),
                  SizedBox(width: 18,),
                  Text("DIAMOND DA40NG",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: "Inter"
                  ),)

                ],
              ),
            ),
            ),

        ],
      );

  }
}
