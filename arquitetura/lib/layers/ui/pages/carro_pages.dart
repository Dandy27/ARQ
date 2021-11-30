import 'package:arquitetura/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arquitetura/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:arquitetura/layers/domain/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arquitetura/layers/domain/usecases/get_carros_por_cor/get_carro_por_cor_usecase_impl.dart';
import 'package:arquitetura/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:arquitetura/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';

class CarroPages extends StatelessWidget {
  CarroPages({Key? key}) : super(key: key);

  final controller = CarroController(
      GetCarroPorCorUsecaseImpl(
          GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDatasourceImpl())),
      SalvarCarroFavoritoUsecaseImpl(SalvarCarroFavoritoRepositoryImpl()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carro Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
