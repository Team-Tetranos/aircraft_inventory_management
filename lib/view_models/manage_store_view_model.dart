import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/repositories/profile_repository.dart';
import 'package:aircraft_inventory_management/utils/dialogs/error_dialog.dart';
import 'package:aircraft_inventory_management/utils/dialogs/success_dialog.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import '../dependency_injection/di.dart';
import '../models/category.dart' as air;
import '../models/user.dart';

class ManageStoreViewModel extends ChangeNotifier{
  ScrollController scrollcontroller=ScrollController();
  bool isLoading = false;


  PageController pageController = PageController(initialPage: 0);

  AircraftRepository aircraftRepository = sl.get();
  List<air.Category> aircrafts = [];

  List<User> profiles = [];
  ProfileRepository profileRepository = sl.get();


  List<air.Category?> updatedPermittedAircraftValue = [];

  int selectedUserIndex = 0;

  changeSelectedUserIndex(int index){
    selectedUserIndex = index;
    updatedPermittedAircraftValue = profiles[selectedUserIndex].permitted_aircrafts??[];
    notifyListeners();
  }

  changeUpdatedPermittedAircraftValue(List<air.Category?> lst){
    print('comming here');
    updatedPermittedAircraftValue = lst;
    notifyListeners();
  }


  fetchUserProfiles()async{
    EasyLoading.show();
    profiles = [];
    var response = await profileRepository.allProfile();

    EasyLoading.dismiss();
    if(response is List<User>){
      profiles = response;
      notifyListeners();
    }else if(response is Failure){
      print(response.error);
    }
  }

  setupAircrafts()async{
    EasyLoading.show();
    try{
      var response = await aircraftRepository.allAircrafts();
      if(response is List<air.Category>){
        aircrafts = response;
        notifyListeners();
      }

    }catch(e){
      print(e);
    }
    EasyLoading.dismiss();
  }


  onInit()async{
    await setupAircrafts();
    await fetchUserProfiles();

  }

  void onSelectUser(int index) async{
    changeSelectedUserIndex(index);
    updatedPermittedAircraftValue = filterObjects(aircrafts, profiles[index].permitted_aircrafts??[]);
    await pageController.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
    print(pageController.page);
    notifyListeners();
  }

  void previousPage() async{
    print('Pressing');
    await pageController.previousPage( duration: Duration(seconds: 1), curve: Curves.linear);
    print(pageController.page);
    notifyListeners();
  }


  List<air.Category> filterObjects(List<air.Category> list1, List<air.Category> list2) {
    final matchingNames = list2.map((item) => item.name).toSet();
    final filteredList = list1.where((item) => matchingNames.contains(item.name)).toList();
    return filteredList;
  }

  refinedListCategory(){
    List<air.Category> result = [];
    for (var element in updatedPermittedAircraftValue) {
      if(element!=null){
        result.add(element);
      }
    }
    return result;
  }

  updateProfile(BuildContext context)async{
    EasyLoading.show(status: "Please Wait");
    profiles[selectedUserIndex].permitted_aircrafts = refinedListCategory();
    var response = await profileRepository.updateProfile(profiles[selectedUserIndex]);
    EasyLoading.dismiss();
    if(response is User){
      pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.linear);
      showSuccessDialog(context, 'Profile Updated');
    }else{
      showSimpleErrorDialog(context, 'Profile Update Failed');
    }
  }

  verifyProfile(BuildContext context)async{
    var response = await profileRepository.verifyProfile(profiles[selectedUserIndex]);
    if(response is User){
      pageController.previousPage(duration: Duration(seconds: 1), curve: Curves.linear);
      fetchUserProfiles();
      showSuccessDialog(context, 'Profile verification is completed');
    }else{
      showSimpleErrorDialog(context, 'Profile verification Failed');
    }
  }

}