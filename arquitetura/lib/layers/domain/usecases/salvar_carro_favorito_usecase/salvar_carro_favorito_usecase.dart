import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class SalvarCarroFavoritoUsecase {
 Future <Either<Exception, bool>>  call(CarroEntity carroEntity);
}
