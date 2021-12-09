import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:fpdart/fpdart.dart';

class SalvarCarroFavoritoRepositoryImpl
    implements SalvarCarroFavoritoRepository {
  @override
  Future<Either<Exception, bool>> call(CarroEntity carroEntity) async {
    try {
      return Right(carroEntity.valor > 0);
    } catch (e) {
      return Left(Exception('repository error'));
    }
  }
}
