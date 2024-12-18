import 'package:bookly_app/Core/Utils/api_services.dart';
import 'package:bookly_app/Features/Home/Data/Data_Sources/home_local_data_source.dart';
import 'package:bookly_app/Features/Home/Data/Data_Sources/home_remote_data_source.dart';
import 'package:bookly_app/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void serviceLoctor() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        ApiServices(
          Dio(),
        ),
      ),
    ),
  );

  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
}
