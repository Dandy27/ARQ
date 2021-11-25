import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarroPorCorUsecaseImpl implements GetCarrosPorCorUsecase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;

  GetCarroPorCorUsecaseImpl(this._getCarrosPorCorRepository);
  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
