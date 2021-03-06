import 'package:arquitetura/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arquitetura/layers/data/dto/carro_dto.dart';
import 'package:fpdart/fpdart.dart';

class GetCarrosPorCorLocalDatasourceImpl implements GetCarrosPorDatasource {
  var jsonVermelho = {
    'placa': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 5000.00,
  };

  var jsonAny = {
    'placa': 'QWE',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00,
  };
  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception('Error in datasource'));
    }
  }
}
