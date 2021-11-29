import 'package:arquitetura/layers/data/dto/carro_dto.dart';

abstract class GetCarrosPorDatasource {
  CarroDto call(String cor);
}
