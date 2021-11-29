import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/dto/carro_dto.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarrosPorCorRepository {
  final GetCarrosPorDatasource _getCarrosPorDatasource;

  GetCarrosPorCorRepositoryImpl(this._getCarrosPorDatasource);
  @override
  CarroEntity call(String cor) {
    return _getCarrosPorDatasource(cor);
  }
}
