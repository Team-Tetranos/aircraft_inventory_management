import 'package:aircraft_inventory_management/models/DemandModel.dart';
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
}