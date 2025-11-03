import 'package:codefarms_core/di/getit.dart';
import 'package:codefarms_core/resources/code_farms_firebase_options.dart';
import 'package:codefarms_core/services/init_firebase_app.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; // generated

@injectableInit
Future<void> configureDependencies({
  required CodeFarmsFirebaseOptions options,
  bool isTesting = false,
}) async {
  await initFirebaseApp(options: options);
  getIt.init();
  getIt.registerLazySingleton<Dio>(() => Dio());
}
