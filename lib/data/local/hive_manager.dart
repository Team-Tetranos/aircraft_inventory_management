import 'package:aircraft_inventory_management/models/category.dart';
import 'package:aircraft_inventory_management/models/stock_history.dart';
import 'package:aircraft_inventory_management/models/stock_record.dart';
import 'package:aircraft_inventory_management/res/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../dependency_injection/di.dart';
import '../../models/user.dart';
class HiveManager{
  HiveConstants hiveConstants = sl.get<HiveConstants>();

  Future<void> setupHive()async{
    var directory = await getApplicationDocumentsDirectory();
    //Hive.init(directory.path);
    await Hive.initFlutter("${directory.path}/tetranos_db");

    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(CategoryAdapter());
    Hive.registerAdapter(StockHistoryAdapter());
    Hive.registerAdapter(StockRecordAdapter());
    await Hive.openBox<User>(hiveConstants.userClassBoxName);
    await Hive.openBox<Category>(hiveConstants.aircraftBoxName);
    await Hive.openBox<StockRecord>(hiveConstants.stockRecordBoxName);
    await Hive.openBox<StockHistory>(hiveConstants.stockHistoryBoxName);

    print('hive setup finished');
  }
  Future<Box<String>> getSampleBox()async{
    if(!Hive.isBoxOpen('sample')){
      await Hive.openBox<String>('sample');
    }
    return Hive.box<String>('sample');
  }

  Future<void> addSampleData(String user)async{
    var userBox = await getSampleBox();
    try{
      await userBox.put(hiveConstants.myProfileKey, user);
      print('user String data is inserted');
    }catch(e){
      print('user String data input exception');
      print(e);
    }
  }

  Future<String?> getSampleData()async{
    var userBox = await getSampleBox();
    return userBox.get(hiveConstants.myProfileKey);
  }


  Future<Box<User>> getUserBox()async{
    if(!Hive.isBoxOpen(hiveConstants.userClassBoxName)){
      await Hive.openBox<User>(hiveConstants.userClassBoxName);
    }
    return Hive.box<User>(hiveConstants.userClassBoxName);
  }
  Future<Box<StockRecord>> getStockRecordBox()async{
    if(!Hive.isBoxOpen(hiveConstants.stockRecordBoxName)){
      await Hive.openBox<StockRecord>(hiveConstants.stockRecordBoxName);
    }
    return Hive.box<StockRecord>(hiveConstants.stockRecordBoxName);
  }
  Future<Box<StockHistory>> getStockHistoryBox()async{
    if(!Hive.isBoxOpen(hiveConstants.stockHistoryBoxName)){
      await Hive.openBox<StockHistory>(hiveConstants.stockHistoryBoxName);
    }
    return Hive.box<StockHistory>(hiveConstants.stockHistoryBoxName);
  }

  //User operation

  Future<void> addUserData(User user)async{
    var userBox = await getUserBox();
    try{
      await userBox.put(hiveConstants.myProfileKey, user);
      print('user data is inserted');
    }catch(e){
      print('user data input exception');
      print(e);
    }
  }

  Future<User?> getUserData()async{
    var userBox = await getUserBox();
    return userBox.get(hiveConstants.myProfileKey);
  }


  //StockRecord operation

  Future<void> addStockRecordData(StockRecord stockRecord)async{
    var stockRecordBox = await getStockRecordBox();
    try{
      await stockRecordBox.add(stockRecord);
    }catch(e){
      print('stock data input exception');
      print(e);
    }
  }

  Future<List<StockRecord>> getStockRecordData()async{
    var stockRecordBox = await getStockRecordBox();
    List<StockRecord> result = [];
    result = stockRecordBox.values.map((e) => e).toList();
    return result;
  }


  //stock history operation

  Future<void> addStockHistoryData(StockHistory stockHistory)async{
    var stockHistoryBox = await getStockHistoryBox();
    try{
      await stockHistoryBox.add(stockHistory);

    }catch(e){
      print('stock history input exception');
      print(e);
    }
  }

  Future<List<StockHistory>> getStockHistoryData()async{
    var stockHistoryBox = await getStockHistoryBox();
    List<StockHistory> result = [];
    result = stockHistoryBox.values.map((e) => e).toList();
    return result;
  }

  Future<List<StockHistory>> getStockHistoryDataByRecord(StockRecord stockRecord)async{
    var stockHistoryBox = await getStockHistoryBox();
    List<StockHistory> result = [];
    result = stockHistoryBox.values.where((e) => e.stock_record==stockRecord).toList();
    return result;
  }


}