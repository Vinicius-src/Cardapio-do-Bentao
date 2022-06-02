import 'package:cardapio_do_bentao/telas/feedback.dart';
import 'package:cardapio_do_bentao/telas/menuSemana.dart';
import 'package:cardapio_do_bentao/telas/menuDia.dart';
import 'package:cardapio_do_bentao/telas/vote.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class destaque extends StatefulWidget {
  const destaque({Key? key}) : super(key: key);

  @override
  State<destaque> createState() => _destaqueState();
}

class _destaqueState extends State<destaque> {
  int _index = 0;
  late PageController pc;
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: _index);
  }

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
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              // ignore: deprecated_member_use
              child: Material(
                  child: InkWell(
                child: Image.asset(
                  'images/menuDestaque.jpg',
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => menuDia()),
                    ),
                  );
                },
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 50, 30),
            child: Text(
              "Noticias",
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Image.asset('images/menuDestaque.jpg'),
                width: 100,
                height: 100,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image.asset('images/menuDestaque.jpg'),
                width: 100,
                height: 100,
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Image.asset('images/menuDestaque.jpg'),
                width: 100,
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
