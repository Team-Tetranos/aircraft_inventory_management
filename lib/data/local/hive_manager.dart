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
    await Hive.openBox<User>(hiveConstants.userClassBoxName);
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

  printKeys()async{
    var userBox = await getUserBox();
    var usd = userBox.get(hiveConstants.myProfileKey);

  }


}