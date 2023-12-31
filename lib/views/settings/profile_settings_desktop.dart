import 'package:aircraft_inventory_management/utils/date_object_conversion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../res/endpoints.dart';
import '../../view_models/settings_view_model.dart';

class Profile_Settings_View_Desktop extends StatefulWidget {
  const Profile_Settings_View_Desktop({Key? key}) : super(key: key);

  @override
  State<Profile_Settings_View_Desktop> createState() => _Profile_Settings_View_DesktopState();
}

class _Profile_Settings_View_DesktopState extends State<Profile_Settings_View_Desktop> {


  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SettingsViewModel>(context, listen: false).onInit(context);
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsViewModel>(
      builder: (context,svm,_) {
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
                        Icon(Icons.settings,color: Color(0xFF696969),size: 26,),
                        SizedBox(width: 14,),
                        Text("Settings & Privacy",
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
                SizedBox(height: 33,),

                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 66,
                      width: MediaQuery.of(context).size.width*.163,
                      decoration: BoxDecoration(
                        color: Color(0xFF1366D9),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))

                      ),
                      child: Center(
                        child: Text("Profile Settings",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: "Inter"
                        ),),
                      ),
                    ),

                    Container(
                      height: 679,
                      width: MediaQuery.of(context).size.width*.722,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 324,
                              width: MediaQuery.of(context).size.width*.153,
                              color: Color(0xFFCFE0F8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("${svm.user.first_name??'-'} ${svm.user.last_name??'-'}",
                                  style: TextStyle(
                                    color: Color(0xFF212121),
                                    fontFamily: "inter",
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800
                                  ),),
                                  Text("${svm.user.email}",
                                    style: TextStyle(
                                        color: Color(0xFF696969),
                                        fontFamily: "inter",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500
                                    ),),
                                  Container(
                                    height: 79,
                                    width: 79,

                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 39,
                                          backgroundImage: svm.pickedImage!=null?FileImage(svm.pickedImage!): svm.user.profile_image==null?AssetImage('assets/image_files/Group 1289 (1).png'):NetworkImage('${EndPoints().image_base_url}${svm.user.profile_image}')as ImageProvider,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: const EdgeInsets.only(right: 7,),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 11,
                                              child: Center(child: GestureDetector(
                                                onTap: (){
                                                  svm.deleteImage();
                                                },

                                                  child: Icon(
                                                    Icons.delete_outline_outlined,color: Color(0xFFE70707),size: 13,)
                                              )
                                              ),

                                            ),
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      svm.pickImage();
                                    },
                                    child: Container(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width*.1055,
                                      color: Color(0xFF1366D9),
                                      child: Center(
                                        child: Text("Upload new photo",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: "Inter"
                                        ),),
                                      ),
                                    ),
                                  ),
                                  Text("since: ${stringToDate(svm.user.created_at)}",
                                    style: TextStyle(
                                      color: Color(0xFF696969),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        fontFamily: "Inter"
                                    ),),



                                ],
                              ),
                            ),
                            Container(
                              height: 637,
                              width: MediaQuery.of(context).size.width*.438,
                              child: Column(
                                children: [
                                  Container(
                                    height: 78,
                                    width: MediaQuery.of(context).size.width*.438,
                                    color: Color(0xFFB5D3FF),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 31),
                                        child: Text("Profile Information",
                                          style: TextStyle(
                                              color: Color(0xFF1F1E1E),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 26,
                                              fontFamily: "Inter"
                                          ),),
                                      ),
                                    ),

                                  ),
                                  Container(
                                    height: 559,
                                    color: Color(0xFFCFE0F8),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 30,),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 27,right: 27),
                                            child: Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,

                                              children: [

                                                Column(
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    Text("First Name",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: "Inter",
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500
                                                    ),),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                      height: 36.0,
                                                      width: MediaQuery.of(context).size.width*.1847,// Set the desired height for the TextField
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.all(Radius.circular(2)),
                                                        border: Border.all(color: Colors.grey),
                                                      ),
                                                      child: Center(
                                                        child: TextField(
                                                          controller: svm.fullname,
                                                          decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                                            hintText: '',
                                                            border: InputBorder
                                                                .none, // Remove the default TextField border
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Last Name",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: "Inter",
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                      height: 36.0,
                                                      width: MediaQuery.of(context).size.width*.1847,// Set the desired height for the TextField
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.all(Radius.circular(2)),
                                                        border: Border.all(color: Colors.grey),
                                                      ),
                                                      child: Center(
                                                        child: TextField(
                                                          controller: svm.username,
                                                          decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                                            hintText: '',
                                                            border: InputBorder
                                                                .none, // Remove the default TextField border
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 41,),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 27,right: 27),
                                            child: Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,

                                              children: [

                                                Column(
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Phone Number",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: "Inter",
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                      height: 36.0,
                                                      width: MediaQuery.of(context).size.width*.1847,// Set the desired height for the TextField
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.all(Radius.circular(2)),
                                                        border: Border.all(color: Colors.grey),
                                                      ),
                                                      child: Center(
                                                        child: TextField(
                                                          inputFormatters: <TextInputFormatter>[
                                                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                          ],
                                                          obscureText: svm.isobscuredfornumber,
                                                          keyboardType: TextInputType.number,
                                                          controller: svm.phonenumber,
                                                          decoration: InputDecoration(
                                                            suffixIcon: GestureDetector(
                                                                onTap: (){
                                                                  svm.changingObsecurenumberbool();
                                                                },
                                                                child: Icon(Icons.remove_red_eye,size: 16,)),

                                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                                            hintText: '',
                                                            border: InputBorder
                                                                .none, // Remove the default TextField border
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 41,),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 27,right: 27),
                                            child: Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,

                                              children: [

                                                Column(
                                                  crossAxisAlignment:CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Email",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: "Inter",
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500
                                                      ),),
                                                    SizedBox(height: 10,),
                                                    Container(
                                                      // padding: EdgeInsets.symmetric(horizontal: 16.0),
                                                      height: 36.0,
                                                      width: MediaQuery.of(context).size.width*.1847,// Set the desired height for the TextField
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.all(Radius.circular(2)),
                                                        border: Border.all(color: Colors.grey),
                                                      ),
                                                      child: Center(
                                                        child: TextField(
                                                          enabled: false,
                                                          controller: svm.email,
                                                          decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.only(left: 6,bottom: 15),
                                                            hintText: '',
                                                            border: InputBorder
                                                                .none, // Remove the default TextField border
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 41,),

                                        SizedBox(height: 60,),
                                        GestureDetector(
                                          onTap: (){
                                            svm.updateProfile(context);
                                          },
                                          child: Container(
                                            height:35,
                                            width:98,
                                            color: Color(0xFF1366D9),
                                            child:Center(
                                              child: Text("Submit",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Inter'
                                              ),),
                                            )
                                          ),
                                        )

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    )
                  ],
                )

              ],
            ),
          ),
        );
      }
    );
  }
}
