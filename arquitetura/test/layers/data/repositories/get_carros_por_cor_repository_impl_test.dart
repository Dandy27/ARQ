import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorDatasource datasource = GetCarrosPorCorLocalDatasourceImpl();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImpl(datasource);
  test('deve retornar um carro independente da cor', () {
    var result = repository('qualquer cor');
    expect(result, isNotNull);
  });
}
