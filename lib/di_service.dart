
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

var getIt = GetIt.instance;

final header = {
  'accept' : 'application/json',
  'Content-Type' : 'application/json',
};

Map<String, dynamic> headerWithAuth(String? token) => {
  'accept' : 'application/json',
  'Content-Type' : 'application/json',
  "Authorization": "Bearer $token",
};

Future<void> init() async {
  /// Hive
  await initHive();
  /// Get_it
  getItInit();
  /// Local database init
  // await GetStorage.init();
}

void getItInit() async {

  getIt

    .registerLazySingleton(
          () => Dio()
        ..options = BaseOptions(
          baseUrl: '',
          headers: header,
          sendTimeout: const Duration(seconds: 30),
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        )
        ..interceptors.addAll(
          [
            LogInterceptor(
              requestBody: kDebugMode,
              responseBody: kDebugMode,
              logPrint: (object) =>
              kDebugMode ? log('dio: ${object.toString()}') : null,
            ),
            // chuck.getDioInterceptor(),
          ],
        ),
    );

  /// Data Sources
  //   ..registerLazySingleton<LoginRemoteDataSource>(() => LoginRemoteDataSourceImpl())
  //   ..registerLazySingleton<LoginLocalDataSource>(() => LoginLocalDataSourceImpl())
  //
  //   ..registerLazySingleton<CommonRemoteDataSource>(() => CommonRemoteDataSourceImpl())
  //   ..registerLazySingleton<CommonLocalDataSource>(() => CommonLocalDataSourceImpl())
  // ..registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance)
  // ..registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance,)

  /// Repository
  //   ..registerLazySingleton<SignUpRepo>(() => SignUpRepoImpl(getIt()));

  /// ViewModel
  //   ..registerSingleton<AuthViewModel>(AuthViewModel(),)

}

Future<void> initHive() async {

  await Hive.initFlutter();
  await Hive.openBox("appBox");

  // const boxName = 'appBox';
  // final Directory directory = await getApplicationDocumentsDirectory();
  // Hive.init(directory.path);
  // _box = await Hive.openBox<dynamic>(boxName);
}
