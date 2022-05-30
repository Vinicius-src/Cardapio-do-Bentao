import 'package:flutter/material.dart';

class destaque extends StatefulWidget {
  const destaque({Key? key}) : super(key: key);

  @override
  State<destaque> createState() => _destaqueState();
}

class _destaqueState extends State<destaque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Destaque"),
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
