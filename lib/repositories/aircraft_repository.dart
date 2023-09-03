import 'dart:io';

import 'package:aircraft_inventory_management/data/remote/responses/api_response.dart';
import 'package:aircraft_inventory_management/models/aircraftitem.dart';
import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/models/stock_record_report.dart';
import 'package:aircraft_inventory_management/utils/convertMap.dart';

import '../data/remote/service/base_api_service.dart';
import '../data/remote/service/network_api_service.dart';
import '../dependency_injection/di.dart';
import '../models/stock_history.dart';
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
        Category category = Category.fromJson(response.data as Map<String, dynamic>);
        result = category;
      }else if(response is Failure){

        result=response;
      }

    }else{
      var response = await apiService.postWithFiles(endPoints.base_url+endPoints.add_aircraft, data, {'image':image}, token: true);
      if(response is Success){
        Category category = Category.fromJson(response.data as Map<String, dynamic>);
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
        Category category = Category.fromJson(response.data as Map<String, dynamic>);
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


  Future<Object> stockRecordByAircraft(Category stockRecord)async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.get_stock_record_by_aircraft+'${stockRecord.id}/', token: true);

    if(response is Success){

      List<StockRecord> stocks = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {
        stocks.add(StockRecord.fromJson(element));
      }
      result = stocks;
    }else if(response is Failure){
      result = response;
    }
    return result;
  }

  Future<Object> getStockRecord(String id) async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse('${endPoints.base_url}${endPoints.stock_record_by_id}$id/', token: true);

    if(response is Success){

      result = StockRecord.fromJson(response.data as Map<String, dynamic>);

    }else if(response is Failure){
      result = response;
    }
    return result;
  }

  Future<Object> stockHistoryByRecord(StockRecord stockRecord)async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse(endPoints.base_url+endPoints.get_stock_history_by_record+'${stockRecord.id}/', token: true);

    if(response is Success){

      List<StockHistory> stocks = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {
        stocks.add(StockHistory.fromJson(element));
      }
      result = stocks;
      print(stocks.length);
    }else if(response is Failure){
      result = response;
    }
    return result;
  }

  Future<Object> createStockRecord(Map<String, dynamic> data, {File? image})async{

    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse(endPoints.base_url+endPoints.create_stock_record, data, token: true);
      if(response is Success){
        StockRecord stockRecord = StockRecord.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){

        result=response;
      }

    }else{

      data = convertMap(data);
      var response = await apiService.postWithFiles(endPoints.base_url+endPoints.create_stock_record, data, {'image':image}, token: true);
      if(response is Success){
        StockRecord stockRecord = StockRecord.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){
        result=response;
      }
    }
    return result;

  }



  Future<Object> updateStockRecord(Map<String, dynamic> data,StockRecord stockRecord, {File? image})async{

    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse('${endPoints.base_url}${endPoints.stock_record_by_id}${stockRecord.id}/', data, token: true);
      if(response is Success){
        StockRecord stockRecord = StockRecord.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){

        result=response;
      }

    }else{
      data = convertMap(data);
      var response = await apiService.postWithFiles('${endPoints.base_url}${endPoints.stock_record_by_id}${stockRecord.id}/', data, {'image':image}, token: true);
      if(response is Success){
        StockRecord stockRecord = StockRecord.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){
        result=response;
      }
    }
    return result;

  }

  Future<Object> createBulkHistory(List<StockHistory> stockHistory, {File? image})async{

    final data =  stockHistory.map((e) => e.received==true? {
      'created_by':e.created_by,
      'date':e.date,
      'stock_record':e.stock_record,
      'voucher_no':e.voucher_no,
      'quantity':e.quantity,
      'received':e.received,
      'expire':e.expire
    }:{
      'created_by':e.created_by,
      'date':e.date,
      'stock_record':e.stock_record,
      'voucher_no':e.voucher_no,
      'quantity':e.quantity,
      'received':e.received
    }).toList();

    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse(endPoints.base_url+endPoints.create_stock_record, data, token: true);
      if(response is Success){
        StockRecord stockRecord = StockRecord.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){

        result=response;
      }

    }else{
      var response = await apiService.postWithFiles(endPoints.base_url+endPoints.create_stock_record, data, {'image':image}, token: true);
      if(response is Success){
        StockRecord stockRecord = StockRecord.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){
        result=response;
      }
    }
    return result;

  }


  Future<Object> createStockHistory(StockHistory e, {File? image})async{
    final data = e.received==true?{
      'created_by':e.created_by,
      'date':e.date,
      'stock_record':e.stock_record,
      'voucher_no':e.voucher_no,
      'quantity':e.quantity,
      'received':e.received,
      'expire':e.expire
    }:{
      'created_by':e.created_by,
      'date':e.date,
      'stock_record':e.stock_record,
      'voucher_no':e.voucher_no,
      'quantity':e.quantity,
      'received':e.received
    };
    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse(endPoints.base_url+endPoints.create_stock_history, data, token: true);
      if(response is Success){
        StockHistory stockHistory = StockHistory.fromJson(response.data as Map<String, dynamic>);
        result = stockHistory;
      }else if(response is Failure){

        result=response;
      }

    }else{
      var response = await apiService.postWithFiles(endPoints.base_url+endPoints.create_stock_history, data, {'image':image}, token: true);
      if(response is Success){
        StockHistory stockHistory = StockHistory.fromJson(response.data as Map<String, dynamic>);
        result = stockHistory;
      }else if(response is Failure){

        result=response;
      }
    }
    return result;

  }

  Future<Object> deleteStockRecord(StockRecord stockRecord) async{

    Object result = Failure(code: 400, error: {}, key: '');

    var response = await apiService.deleteApiResponse('${endPoints.base_url}${endPoints.stock_record_by_id}${stockRecord.id}/', token: true);

    result = response;

    return result;

  }


  Future<Object> updateStockHistory(Map<String, dynamic> data,StockHistory stockHistory, {File? image})async{

    Object result = Failure(code: 400, error: {}, key: '');
    if(image==null){
      var response = await apiService.postApiResponse('${endPoints.base_url}${endPoints.stock_history_by_id}${stockHistory.id}/', data, token: true);
      if(response is Success){
        StockHistory stockRecord = StockHistory.fromJson(response.data as Map<String, dynamic>);
        result = stockRecord;
      }else if(response is Failure){

        result=response;
      }
    }
    return result;

  }

  Future<Object> deleteStockHistory(StockHistory selectedStockHistory) async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.deleteApiResponse('${endPoints.base_url}${endPoints.stock_history_by_id}${selectedStockHistory.id}/',  token: true);
    result = response;
    return result;
  }



  Future<Object> getStockRecordReport() async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse('${endPoints.base_url}${endPoints.stock_record_report}', token: true);

    if(response is Success){

      List<StockRecordReport> stocks = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {
        stocks.add(StockRecordReport.fromJson(element));
      }

      result = stocks;

    }else if(response is Failure){
      result = response;
    }
    return result;
  }


  Future<Object> getStockNotification() async{
    Object result = Failure(code: 400, error: {}, key: '');
    var response = await apiService.getApiResponse('${endPoints.base_url}${endPoints.stock_record_notification}', token: true);

    if(response is Success){

      List<StockRecord> stocks = [];
      Iterable it = response.data as Iterable;
      for (var element in it) {
        stocks.add(StockRecord.fromJson(element));
      }

      result = stocks;

    }else if(response is Failure){
      result = response;
    }
    return result;
  }

}