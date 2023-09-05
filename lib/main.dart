import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/data/local/shared_preference_manager.dart';
import 'package:aircraft_inventory_management/res/constants.dart';
import 'package:aircraft_inventory_management/res/custom_scroll_behavior.dart';
import 'package:aircraft_inventory_management/utils/loading_animation/loading_animation.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/utils/routes/routes.dart';
import 'package:aircraft_inventory_management/view_models/demand_database_view_model.dart';

import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';

import 'package:aircraft_inventory_management/view_models/help_and_support_view_model.dart';
import 'package:aircraft_inventory_management/view_models/login_view_model.dart';
import 'package:aircraft_inventory_management/view_models/manage_store_view_model.dart';
import 'package:aircraft_inventory_management/view_models/report_view_model.dart';
import 'package:aircraft_inventory_management/view_models/reset_password_view_model.dart';
import 'package:aircraft_inventory_management/view_models/settings_view_model.dart';
import 'package:aircraft_inventory_management/view_models/sign_up_view_model.dart';
import 'package:aircraft_inventory_management/view_models/blank_view_model.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/otp_view_model.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:aircraft_inventory_management/view_models/stock_history_view_model.dart';
import 'package:aircraft_inventory_management/view_models/stock_view_model.dart';

import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/view_models/forgot_password_view_model.dart';
import 'package:aircraft_inventory_management/views/help_and_support/help_support_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:desktop_window/desktop_window.dart';
import 'dependency_injection/di.dart';

Future<void> deleteHiveDatabase() async {
  try {
    // Close all open Hive boxes
    await Hive.close();

    // Get the application's document directory
    final appDocumentDir = await getApplicationDocumentsDirectory();

    // Delete the Hive database files
    await appDocumentDir.delete(recursive: true);

    print('Hive database deleted successfully');
  } catch (e) {
    print('Error deleting Hive database: $e');
  }
}

Future testWindowFunctions() async {
  Size size = await DesktopWindow.getWindowSize();
  print(size);


  await DesktopWindow.setMinWindowSize(Size(double.infinity,double.infinity));
  await DesktopWindow.setMaxWindowSize(Size(double.infinity,double.infinity));

  await DesktopWindow.setFullScreen(true);

}


Future<void> deleteHiveBoxes() async {
  try {
    HiveConstants hiveConstants = HiveConstants();
    // Close all open Hive boxes
    //await Hive.close();
    await Hive.deleteBoxFromDisk(hiveConstants.stockListHistoryBox);
    await Hive.deleteBoxFromDisk(hiveConstants.stockHistoryBoxName);
    await Hive.deleteBoxFromDisk(hiveConstants.userClassBoxName);
    await Hive.deleteBoxFromDisk(hiveConstants.stockRecordBoxName);

    print('Hive database deleted successfully');
  } catch (e) {
    print('Error deleting Hive database: $e');
  }
}

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await setupDependency();
  //await testWindowFunctions();
  //await deleteHiveBoxes();
  //await deleteHiveDatabase();

  runApp(MyApp());

  config();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  SharedPreferenceManager sharedPreferenceManager = sl.get();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>HelpAndSupportViewModel()),
        ChangeNotifierProvider(create: (_)=>SettingsViewModel()),
        ChangeNotifierProvider(create: (_)=>BlankViewModel()),
        ChangeNotifierProvider(create: (_)=>MyProviderForInventoryView()),
        ChangeNotifierProvider(create: (_)=>BaseViewModel()),
        ChangeNotifierProvider(create: (_)=>CreateNewPasswordViewModel()),
        ChangeNotifierProvider(create: (_)=>LoginViewModel()),
        ChangeNotifierProvider(create: (_)=>SignupViewModel()),
        ChangeNotifierProvider(create: (_)=>OtpViewModel()),
        ChangeNotifierProvider(create: (_)=>ResetPasswordViewModel()),
        ChangeNotifierProvider(create: (_)=>DashboardViewModel()),
        ChangeNotifierProvider(create: (_)=>SingleItemViewModel()),
        ChangeNotifierProvider(create: (_)=>ManageStoreViewModel()),
        ChangeNotifierProvider(create: (_)=>StockViewModel()),
        ChangeNotifierProvider(create: (_)=>StockHistoryViewModel()),
        ChangeNotifierProvider(create: (_)=>ReportViewModel()),
        ChangeNotifierProvider(create: (_)=>DemandDatabaseViewModel()),
      ],
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

          useMaterial3: true,
        ),
        builder: EasyLoading.init(),

        initialRoute: '/',
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}



