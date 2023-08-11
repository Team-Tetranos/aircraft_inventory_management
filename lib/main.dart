import 'package:aircraft_inventory_management/data/local/hive_manager.dart';
import 'package:aircraft_inventory_management/data/local/shared_preference_manager.dart';
import 'package:aircraft_inventory_management/res/custom_scroll_behavior.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/utils/routes/routes.dart';
import 'package:aircraft_inventory_management/view_models/dashboard_view_model.dart';
import 'package:aircraft_inventory_management/view_models/login_view_model.dart';
import 'package:aircraft_inventory_management/view_models/manage_store_view_model.dart';
import 'package:aircraft_inventory_management/view_models/reset_password_view_model.dart';
import 'package:aircraft_inventory_management/view_models/sign_up_view_model.dart';
import 'package:aircraft_inventory_management/view_models/blank_view_model.dart';
import 'package:aircraft_inventory_management/view_models/inventory_view_model.dart';
import 'package:aircraft_inventory_management/view_models/otp_view_model.dart';
import 'package:aircraft_inventory_management/view_models/single_item_view_model.dart';
import 'package:aircraft_inventory_management/view_models/view_model_for_base_view/base_view_model.dart';
import 'package:aircraft_inventory_management/view_models/forgot_password_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

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

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependency();



  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  SharedPreferenceManager sharedPreferenceManager = sl.get();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
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


      ],
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),

        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

          useMaterial3: true,
        ),
        initialRoute:  sharedPreferenceManager.getAccessToken()==null?RouteNames.login:RouteNames.baseview,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}


