import 'package:arquitetura/layers/data/dto/carro_dto.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetCarrosPorDatasource {
   Either<Exception, CarroDto>  call(String cor);
}
