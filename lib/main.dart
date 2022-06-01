import 'package:cardapio_do_bentao/telas/destaque.dart';
import 'package:cardapio_do_bentao/telas/inicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio do Bentão',
      home: inicio(),
    );
  }
}
