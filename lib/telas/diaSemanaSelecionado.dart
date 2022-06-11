import 'package:flutter/material.dart';

class diaSemanaSelecionado extends StatefulWidget {
  const diaSemanaSelecionado({Key? key}) : super(key: key);

  @override
  State<diaSemanaSelecionado> createState() => _diaSemanaSelecionadoState();
}

class _diaSemanaSelecionadoState extends State<diaSemanaSelecionado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Sexta exemplo"),
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
      body: Container(),
    );
  }
}
