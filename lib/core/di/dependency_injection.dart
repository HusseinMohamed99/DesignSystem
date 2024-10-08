part of './../helpers/export_manager/export_manager.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // SharedPreferences instance
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  // AppPreferences instance
  // final appPreferences = AppPreferences(instance());
  getIt
      .registerLazySingleton<SharedPrefHelper>(() => SharedPrefHelper(getIt()));
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<ApiService>(ApiService(dio));
}
