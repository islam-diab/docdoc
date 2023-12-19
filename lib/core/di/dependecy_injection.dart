import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/login/data/repository/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  // dio & appService
  getIt.registerLazySingleton(() => ApiService(dio));

  //login
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerLazySingleton(() => LoginCubit(getIt()));
}
