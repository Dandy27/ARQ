import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUsecase _getCarrosPorCorUsecase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  CarroController(
      this._getCarrosPorCorUsecase, this._salvarCarroFavoritoUsecase) {
    getCarroPorCor('vermelho');
  }

  late CarroEntity carro;

  getCarroPorCor(String cor) {
    var result = _getCarrosPorCorUsecase(cor);
    result.fold(
      (error) => print(toString()),
      (success) => carro = success,
    );
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUsecase(carro);
  }
}
