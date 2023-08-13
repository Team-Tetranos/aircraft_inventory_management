import 'dart:convert';
import 'dart:io';
import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';

import '../../../dependency_injection/di.dart';
import '../../../res/Api/api_client.dart';
import '../../local/shared_preference_manager.dart';
import '../exceptions/api_exceptions.dart';
import 'base_api_service.dart';

class ApiService extends BaseApiService{

  ApiClient apiClient = sl.get<ApiClient>();
  SharedPreferenceManager sharedPreferenceManager = sl.get<SharedPreferenceManager>();

  @override
  Future getApiResponse(String url, {bool? token}) async{
    dynamic responseJson;
    try{

      dynamic headers = token==null?{
        'Content-Type': 'application/json',
        'Accept': 'application/json',

      }:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':"Bearer ${sharedPreferenceManager.getAccessToken()}"
      };
      final response = await get(Uri.parse(url), headers: headers);
      //print(response.body);
      if(response.statusCode==200||response.statusCode==201){
        responseJson = Success(code: response.statusCode, data: returnResponse(response)['data'], key: returnResponse(response)['key']);
      }else{
        responseJson = Failure(code: response.statusCode, error: returnResponse(response)['data'], key: returnResponse(response)['key']);
      }
      // responseJson = returnResponse(response);
    }on SocketException{
      return Failure(code: 500, error: {
        'error':'No Internet Connection'
      }, key: 'No Internet Connection');
    }
    on FormatException{
      return Failure(code: 500, error: {
        'error':'Format Exception'
      }, key: 'Format Exception');
    }
    catch(e){
      return Failure(code: 500, error: {
        'error':e.toString()
      }, key: 'Server Error');
    }
    print(responseJson.runtimeType);
    return responseJson;
  }

  @override
  Future <Object> postApiResponse(String url, dynamic data, {bool? token}) async{

    dynamic responseJson;

    try{
      dynamic headers = token==null?{
        'Content-Type': 'application/json',
        'Accept': 'application/json',

      }:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':"Bearer ${sharedPreferenceManager.getAccessToken()}"
      };

      final response = await post(Uri.parse(url), body: jsonEncode(data), headers: headers).timeout(const Duration(seconds: 30));
      //print(response.body);
      if(response.statusCode==200 || response.statusCode==201){
        responseJson = Success(code: response.statusCode, data: returnResponse(response)['data'], key: returnResponse(response)['key']);
      }else{
        responseJson = Failure(code: response.statusCode, error: returnResponse(response)['data'], key: returnResponse(response)['key']);
      }
     // responseJson = returnResponse(response);
    }on SocketException{
      return Failure(code: 500, error: {
        'error':'No Internet Connection'
      }, key: 'No Internet Connection');
    }
    on FormatException{
      return Failure(code: 500, error: {
        'error':'Format Exception'
      }, key: 'Format Exception');
    }
    catch(e){
      print(e);
      return Failure(code: 500, error: {
        'error':e.toString()
      }, key: 'Server Error');
    }

    return responseJson;
  }

  @override
  Future postWithFiles(String url, dynamic data, Map<String,File> files, {bool? token}) async {


    dynamic responseJson;

    try {
      dynamic headers = token==null?{
        'Content-Type': 'application/json',
        'Accept': 'application/json',

      }:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':"Bearer ${sharedPreferenceManager.getAccessToken()}"
      };
      var request = MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll(data);
      request.headers.addAll(headers);

      files.forEach((key, value) async{
        String fieldName = key; // Modify this according to your API's expected file field name
        String fileName = value.path.split('/').last;
        String mimeType = lookupMimeType(value.path)??"";


        var fileStream = ByteStream(Stream.castFrom(value.openRead()));
        var fileLength = await value.length();

        var multipartFile = MultipartFile(
          fieldName,
          fileStream,
          fileLength,
          filename: fileName,
          contentType: MediaType.parse(mimeType),
        );

        request.files.add(multipartFile);
      });



      var response = await request.send();
      var responseBody = await response.stream.bytesToString();
      var statusCode = response.statusCode;

      if(statusCode==200||response.statusCode==201){
        responseJson = Success(code: response.statusCode, data: returnResponse(Response(responseBody, statusCode))['data'], key: returnResponse(Response(responseBody, statusCode))['key']);
      }else{
        responseJson = Failure(code: response.statusCode, error: returnResponse(Response(responseBody, statusCode))['data'], key: returnResponse(Response(responseBody, statusCode))['key']);
      }
      // responseJson = returnResponse(response);
    }on SocketException{
      return Failure(code: 500, error: {
        'error':'No Internet Connection'
      }, key: 'No Internet Connection');
    }
    on FormatException{
      return Failure(code: 500, error: {
        'error':'Format Exception'
      }, key: 'Format Exception');
    }
    catch(e){
      print(e);
      return Failure(code: 500, error: {
        'error':e.toString()
      }, key: 'Server Error');
    }
    return responseJson;
  }

  dynamic returnResponse(Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        //print(responseJson);
        return responseJson;
      case 201:
        dynamic responseJson = jsonDecode(response.body);
        //print(responseJson);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataExceptions(message: "Error during connection");
    }
  }

  @override
  Future deleteApiResponse(String url, {bool? token}) async{
    dynamic responseJson;

    try{
      dynamic headers = token==null?{
        'Content-Type': 'application/json',
        'Accept': 'application/json',

      }:{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization':"Bearer ${sharedPreferenceManager.getAccessToken()}"
      };

      final response = await delete(Uri.parse(url), headers: headers).timeout(const Duration(seconds: 30));
      //print(response.body);
      if(response.statusCode==200 || response.statusCode==201){
        responseJson = Success(code: response.statusCode, data: '', key: '');
      }else{
        responseJson = Failure(code: response.statusCode, error: '', key: '');
      }
      // responseJson = returnResponse(response);
    }on SocketException{
      return Failure(code: 500, error: {
        'error':'No Internet Connection'
      }, key: 'No Internet Connection');
    }
    on FormatException{
      return Failure(code: 500, error: {
        'error':'Format Exception'
      }, key: 'Format Exception');
    }
    catch(e){
      print(e);
      return Failure(code: 500, error: {
        'error':e.toString()
      }, key: 'Server Error');
    }

    return responseJson;
  }
  
}