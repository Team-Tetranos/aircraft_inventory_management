import 'package:aircraft_inventory_management/res/custom_scroll_behavior.dart';
import 'package:aircraft_inventory_management/utils/routes/route_names.dart';
import 'package:aircraft_inventory_management/utils/routes/routes.dart';
import 'package:aircraft_inventory_management/view_models/blank_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dependency_injection/di.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>BlankViewModel()),
        ChangeNotifierProvider(create: (_)=>MyProviderForInventoryView())

      ],
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: RouteNames.baseview,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}


