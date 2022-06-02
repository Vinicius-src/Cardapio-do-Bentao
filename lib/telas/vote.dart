import 'package:cardapio_do_bentao/telas/destaque.dart';
import 'package:cardapio_do_bentao/telas/feedback.dart';
import 'package:cardapio_do_bentao/telas/menuSenaba.dart';
import 'package:flutter/material.dart';

class vote extends StatefulWidget {
  const vote({Key? key}) : super(key: key);

  @override
  State<vote> createState() => _voteState();
}

class _voteState extends State<vote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vote"),
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
