import 'dart:io';

import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/category.dart';

import '../data/remote/service/base_api_service.dart';
import '../data/remote/service/network_api_service.dart';
import '../dependency_injection/di.dart';
import '../res/endpoints.dart';

class AircraftRepository{
  BaseApiService apiService = sl.get<ApiService>();
  EndPoints endPoints = sl.get<EndPoints>();

  Future<Object> addCategory(String aircraftName, String aircraftId, {File? image})async{
    var data = {
      'name':aircraftName,
      'aircraft_id':aircraftId
    };
    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse(endPoints.base_url+endPoints.add_aircraft, data, token: true);
      if(response is Success){
        Category category = Category.fromJson(response.data);
        result = category;
      }else if(response is Failure){

        result=response;
      }

    }else{
      var response = await apiService.postWithFiles(endPoints.base_url+endPoints.add_aircraft, data, {'image':image}, token: true);
      if(response is Success){
        Category category = Category.fromJson(response.data);
        result = category;
      }else if(response is Failure){
        result=response;
      }
    }


    return result;

  }


  Future<Object> allAircrafts()async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.all_aircraft, token: true);
    if(response is Success){
      List<Category> aircrafts = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {
        //print(element);
        aircrafts.add(Category.fromJson(element));
      }
    result = aircrafts;
    }else if(response is Failure){
      result = response;
    }
    return result;
  }

  Future<Object> addAircraftItem(Aircraftitem aircraftitem, {File? image})async{
    var data = aircraftitem.toJson();
    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse(endPoints.base_url+endPoints.add_aircraft_item, data, token: true);
      if(response is Success){
        Aircraftitem aircraftitem = Aircraftitem.fromJson(response.data);
        result = aircraftitem;
      }else if(response is Failure){

        result=response;
      }

    }else{
      var response = await apiService.postWithFiles(endPoints.base_url+endPoints.add_aircraft, data, {'image':image}, token: true);
      if(response is Success){
        Category category = Category.fromJson(response.data);
        result = category;
      }else if(response is Failure){
        result=response;
      }
    }
    return result;

  }

  Future<Object> allAircraftItems()async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.all_aircraft_item, token: true);
    if(response is Success){
      List<Aircraftitem> aircraftItems = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {

        aircraftItems.add(Aircraftitem.fromJson(element));
      }
      result = aircraftItems;
    }else if(response is Failure){
      result = response;
    }
    return result;
  }


}