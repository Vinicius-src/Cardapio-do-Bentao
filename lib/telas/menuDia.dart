import 'package:flutter/material.dart';

class menuDia extends StatefulWidget {
  const menuDia({Key? key}) : super(key: key);

  @override
  State<menuDia> createState() => _menuDiaState();
}

class _menuDiaState extends State<menuDia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu do dia"),
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
