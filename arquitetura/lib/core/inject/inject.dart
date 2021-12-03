import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:arquitetura/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    final getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<GetCarrosPorDatasource>(
        () => GetCarrosPorCorLocalDatasourceImpl());
    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosPorCorRepositoryImpl(getIt()));

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImpl());
    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUsecase>(
        () => GetCarroPorCorUsecaseImpl(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(
        () => SalvarCarroFavoritoUsecaseImpl(getIt()));
    //controllers
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}
