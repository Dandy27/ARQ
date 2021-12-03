import 'package:arquitetura/core/inject/inject.dart';
import 'package:arquitetura/layers/ui/pages/carro_pages.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Carros',
      home: CarroPages(),
    );
  }
}
