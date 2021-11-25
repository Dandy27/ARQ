import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImpl();
  test('deve retornar um carro independente da cor', () {
    var result = repository('qualquer cor');
    expect(result, isNotNull);
  });
}
