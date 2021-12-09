import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetCarrosPorCorRepository {
  Either<Exception, CarroEntity> call(String cor);
}
