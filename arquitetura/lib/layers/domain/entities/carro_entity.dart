class CarroEntity {
  String placa;
  int qtPortas;
  double valor;
  CarroEntity({
    required this.placa,
    required this.qtPortas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtPortas;
  }

  setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
