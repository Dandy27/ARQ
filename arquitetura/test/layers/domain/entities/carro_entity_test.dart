import 'package:arquitetura/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a api entitdade não seja nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtPortas: 2, valor: 1000.0);
    expect(carroEntity, isNotNull);
  });
  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtPortas: 2, valor: 1000.0);
    expect(carroEntity.qtPortas, 2);
  });
  test('Espero que o valor real seja 2000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtPortas: 2, valor: 1000.0);

    var resultadoEsperado = 2000.0;
    expect(carroEntity.valorReal, resultadoEsperado);
  });
  test('Espero que o valor real seja 0', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtPortas: 0, valor: 1000.0);

    var resultadoEsperado = 0.0;
    expect(carroEntity.valorReal, resultadoEsperado);
  });
  test('Espero que o valor real seja 30000', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'ABC123', qtPortas: 2, valor: 15000.0);

    carroEntity.setLogica();
    var resultadoEsperado = 30000.0;
    expect(carroEntity.valor, resultadoEsperado);
  });
}
