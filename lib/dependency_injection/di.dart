import 'package:aircraft_inventory_management/repositories/aircraft_repository.dart';
import 'package:aircraft_inventory_management/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../data/local/shared_preference_manager.dart';
import '../data/remote/service/network_api_service.dart';
import '../res/Api/api_client.dart';
import '../res/constants.dart';
import '../res/endpoints.dart';
import '../res/helper.dart';

final sl = GetIt.instance;

Future<void> setupDependency()async{
  sl.registerLazySingleton<Helper>(() => Helper());
  sl.registerLazySingleton<AppConstants>(() => AppConstants());
  sl.registerLazySingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());
  await sl.isReady<SharedPreferences>();
  sl.registerLazySingleton<SharedPreferenceManager>(() => SharedPreferenceManager());
  sl.registerLazySingleton<ApiClient>(() => ApiClient());
  sl.registerLazySingleton<EndPoints>(() => EndPoints());
  sl.registerLazySingleton<ApiService>(() => ApiService());
  sl.registerLazySingleton<AuthRepository>(() => AuthRepository());
  sl.registerLazySingleton<AircraftRepository>(() => AircraftRepository());
}