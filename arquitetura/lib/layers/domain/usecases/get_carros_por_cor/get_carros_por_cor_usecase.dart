import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetCarrosPorCorUsecase {
  Either<Exception, CarroEntity> call(String cor);
}
