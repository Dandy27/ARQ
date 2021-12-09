import 'package:arquitetura/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso ', () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'FDP222', qtPortas: 2, valor: 1);
    var result = await usecase(carro);
    late bool resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);
    expect(resultExpect, true);
  });
  test('Espero que não salve o carro quando valor for menor ou igual que zero ',
      () async {
    SalvarCarroFavoritoUsecase usecase =
        SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl());

    var carro = CarroEntity(placa: 'FDP222', qtPortas: 2, valor: 0);
    var result = await usecase(carro);
    late bool resultExpect;
    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, false);
  });
}
