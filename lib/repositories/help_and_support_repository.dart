import 'package:aircraft_inventory_management/models/helpandsupportmodel.dart';

import '../data/remote/responses/api_response.dart';
import '../data/remote/service/base_api_service.dart';
import '../data/remote/service/network_api_service.dart';
import '../dependency_injection/di.dart';
import '../res/endpoints.dart';

class HelpAndSupportRepository{
  BaseApiService apiService = sl.get<ApiService>();
  EndPoints endPoints = sl.get<EndPoints>();
  Future <Object> gethelpsupport()async{
    Object result = Failure(code: 400, error: {}, key: '');
    try{
      var response =await apiService.getApiResponse(endPoints.base_url+endPoints.help_and_support,token: true);

      if(response is Success){
        List<HelpAndSupportModel> helps = [];
        Iterable it = response.data as Iterable;
        it.forEach((element) {
          helps.add(HelpAndSupportModel.fromJson(element));
        });
        result = helps;
      }
    }catch(e){

    }



    return result;


  }
}
