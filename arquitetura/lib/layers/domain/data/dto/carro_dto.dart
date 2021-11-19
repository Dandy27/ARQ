import 'dart:convert';

import 'package:arquitetura/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFinal;
  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtPortas: quantidadeDePortas,
          placa: placa,
        );



  Map<String, dynamic> toMap() {
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal,
    };
  }

  factory CarroDto.fromMap(Map<String, dynamic> map) {
    return CarroDto(
      placa: map['placa'],
      quantidadeDePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CarroDto.fromJson(String source) => CarroDto.fromMap(json.decode(source));
}
