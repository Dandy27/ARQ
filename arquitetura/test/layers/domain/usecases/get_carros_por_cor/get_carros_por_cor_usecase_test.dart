import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve receber uma instancia de carro quando passado qualquer cor ', () {
    GetCarrosPorCorUsecase usecase = GetCarroPorCorUsecaseImpl(
        GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl()));
    var result = usecase('azul');
    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, isInstanceOf<CarroEntity>());
  });
  test('Deve receber uma carro de duas portas qualquer cor exceto vermelho ',
      () {
    GetCarrosPorCorUsecase usecase = GetCarroPorCorUsecaseImpl(
        GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl()));
    var result = usecase('verde');
    late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect.qtPortas, 2);
  });
  test('Deve retornar um carro de qautro portas quando vermelho ', () {
    GetCarrosPorCorUsecase usecase = GetCarroPorCorUsecaseImpl(
        GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl()));
    var result = usecase('vermelho');
     late CarroEntity resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect.qtPortas, 4);
  });
}
