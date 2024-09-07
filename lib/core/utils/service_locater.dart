import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/domain/repos/home_remote_implementation.dart';
import '../../features/search/domain/repos/search_repo_implementation.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRemoteImplementation>(
    HomeRemoteImplementation(
      apiService: ApiService(
        dio: Dio(),
      ),
    ),
  );
  getIt.registerLazySingleton<SearchRepoImplementation>(
    () => SearchRepoImplementation(
      apiService: ApiService(
        dio: Dio(),
      ),
    ),
  );
}
