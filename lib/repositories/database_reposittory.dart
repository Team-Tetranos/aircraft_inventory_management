import 'package:aircraft_inventory_management/models/DemandModel.dart';
import 'package:aircraft_inventory_management/models/DemandModelByID.dart';
import 'package:aircraft_inventory_management/models/database.dart';

import '../data/remote/responses/api_response.dart';
import '../data/remote/service/base_api_service.dart';
import '../data/remote/service/network_api_service.dart';
import '../dependency_injection/di.dart';
import '../res/endpoints.dart';

class DataBaseRepository{
  BaseApiService apiService = sl.get<ApiService>();
  EndPoints endPoints = sl.get<EndPoints>();

  Future<Object> addtoDatabase(Map<String, dynamic> data)async{
    Object result = Failure(code: 400, error: {}, key: '');

      var response = await apiService.postApiResponse(endPoints.base_url+endPoints.post_database, data, token: true);
      print(response.toString());
      if(response is Success){
        DemandModel databaseItem = DemandModel.fromJson(response.data as Map<String, dynamic>);
        result = databaseItem;
      }else if(response is Failure){

        result=response;
      }
    else{}
    return result;

  }
  Future<Object> updateDemanddata(Map<String,dynamic> data,String id)async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.postApiResponse(endPoints.base_url+endPoints.get_data_by_ID+id+'/', data, token: true);
    print(response.toString());
    if(response is Success){
      DemandModel demandmodel = DemandModel.fromJson(response.data as Map<String, dynamic>);
      result = demandmodel;
    }else if(response is Failure){

      result=response;
    }
    return result;

  }
  Future<Object> deleteStockRecord(String id) async{

    Object result = Failure(code: 400, error: {}, key: '');

    var response = await apiService.deleteApiResponse(endPoints.base_url+endPoints.get_data_by_ID+id+'/', token: true);

    result = response;

    return result;

  }

  Future<Object> getDemanddata()async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.get_all_data, token: true);
    if(response is Success){
      List<DemandModel> demandmodel=[];
      Iterable it =response.data as Iterable;
      for(var element in it){
        demandmodel.add(DemandModel.fromJson(element));
      }
      result =demandmodel;
    }else{
      result=response;
    }
    return result;
  }
  Future<Object> getDataByID(String id)async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.get_data_by_ID+id+'/' ,token: true);
    if(response is Success){
      DemandModel demand=DemandModel();
      demand=DemandModel.fromJson(response.data);
      result=demand;

    }else{
      result=response;
    }
    return result;

  }
}