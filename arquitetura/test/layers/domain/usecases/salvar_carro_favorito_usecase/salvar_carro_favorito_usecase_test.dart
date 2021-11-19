import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImpl
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('Espero que salve o carro com sucesso ', () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'FDP222', qtPortas: 2, valor: 1);
    var result = await usecase(carro);
    expect(result, true);
  });
  test('Espero que não salve o carro quando valor for menor ou igual que zero ', () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'FDP222', qtPortas: 2, valor:0);
    var result = await usecase(carro);
    expect(result, false);
  });
}
