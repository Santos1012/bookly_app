import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;
void setupServiceLocator() {
  gitIt.registerSingleton<Dio>(
    Dio(),
  );
  gitIt.registerSingleton<ApiService>(
    ApiService(
      dio: gitIt.get<Dio>(),
    ),
  );
  gitIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiService: ApiService(
        dio: Dio(),
      ),
    ),
  );
}
