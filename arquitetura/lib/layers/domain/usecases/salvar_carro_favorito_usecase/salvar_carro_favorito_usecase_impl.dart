import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUsecaseImpl implements SalvarCarroFavoritoUsecase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUsecaseImpl(this._salvarCarroFavoritoRepository);
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return _salvarCarroFavoritoRepository(carroEntity);
  }
}
  