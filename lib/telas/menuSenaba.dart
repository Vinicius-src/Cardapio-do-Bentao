import 'package:cardapio_do_bentao/telas/destaque.dart';
import 'package:cardapio_do_bentao/telas/feedback.dart';
import 'package:cardapio_do_bentao/telas/vote.dart';
import 'package:flutter/material.dart';

class menuSemana extends StatefulWidget {
  const menuSemana({Key? key}) : super(key: key);

  @override
  State<menuSemana> createState() => _menuSemanaState();
}

class _menuSemanaState extends State<menuSemana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu da Semana"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.deepOrange, Colors.yellow]),
          ),
          height: 300,
          padding: EdgeInsets.only(left: 200),
          child:
              Image.asset("images/cardapioBentao.png", height: 149, width: 84),
        ),
      ),
    );
  }
}
