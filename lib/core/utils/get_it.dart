import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/features/home/data/rebos/home_repo_empl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoEmpl>(HomeRepoEmpl(ApiServices(Dio())));
}
