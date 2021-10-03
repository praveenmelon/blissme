import 'package:blissme/data/data_sources/blissme_remote_data_source.dart';
import 'package:blissme/data/repositories/blissme_repository_impl.dart';
import 'package:blissme/domain/repositories/blissme_repositories.dart';
import 'package:blissme/domain/usecases/get_all_services.dart';
import 'package:blissme/presentation/blocs/product_carousel_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:blissme/data/core/api_client.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());

  getItInstance
      .registerLazySingleton<ApiClient>(() => ApiClient(getItInstance()));

  getItInstance.registerLazySingleton<BlissMeRemoteDataSource>(
      () => BlissMeRemoteDataSourceImpl(getItInstance()));

  getItInstance.registerLazySingleton<GetAllServices>(
      () => GetAllServices(getItInstance()));

  getItInstance
      .registerLazySingleton<BlissMeRepository>(() => BlissMeRepositoryImpl(
            getItInstance(),
          ));

  getItInstance.registerFactory(
    () => ProductCarouselCubit(
      getAllServices: getItInstance(),
    ),
  );
}
