import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarroPorCorUsecaseImpl implements GetCarrosPorCorUsecase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'qwe1234567', qtPortas: 4, valor: 5000);
    }
    return CarroEntity(placa: 'fdp326', qtPortas: 2, valor: 2000);
  }
}
