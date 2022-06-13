import 'package:flutter/material.dart';
import 'package:cardapio_do_bentao/telas/inicio.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => inicio()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow,
                Colors.deepOrange,
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              child: Image.asset("images/cardapioBentao.png",
                  width: 274, height: 154),
              padding: EdgeInsets.only(bottom: 20),
            ),
            Padding(
              child: Image.asset(
                "images/etec.png",
                width: 182,
                height: 91,
              ),
              padding: EdgeInsets.only(top: 50, bottom: 10),
            ),
          ],
        ),
      ),
    );
  }
}
