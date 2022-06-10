// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:cardapio_do_bentao/values/custonColor.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  var number;

  double? value;
  double? _ratingValue;

  //array
  var imgEmogi = {
    1: Image.asset("images/emogi1.png", width: 200, height: 200),
    2: Image.asset("images/emogi2.png", width: 200, height: 200),
    3: Image.asset("images/emogi3.png", width: 200, height: 200),
    4: Image.asset("images/emogi4.png", width: 200, height: 200),
    5: Image.asset("images/emogi5.png", width: 200, height: 200),
  };

  var msg = {
    1: Text("Muito Insatisfeito!",
        style: TextStyle(fontSize: 20, color: Colors.black87),
        textAlign: TextAlign.center),
    2: Text("Insatisfeito!",
        style: TextStyle(fontSize: 20, color: Colors.black87),
        textAlign: TextAlign.center),
    3: Text("Mediano!",
        style: TextStyle(fontSize: 20, color: Colors.black87),
        textAlign: TextAlign.center),
    4: Text("Satisfeito!",
        style: TextStyle(fontSize: 20, color: Colors.black87),
        textAlign: TextAlign.center),
    5: Text("Muito Satisfeito!",
        style: TextStyle(fontSize: 20, color: Colors.black87),
        textAlign: TextAlign.center),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
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
      body: ListView(children: <Widget>[
        //ListView da scrow pra rola a tela
        Container(
          padding: EdgeInsets.only(top: 50),
          child: Center(
              child: Text(
            "Você está satisfeito com prato? deixe sua avaliação!",
            style: TextStyle(fontSize: 25, color: Colors.black87),
            textAlign: TextAlign.center,
          )),
        ),
        Padding(
            padding: EdgeInsets.only(top: 75),
            child: Center(child: imgEmogi[number])),
        Container(padding: EdgeInsets.only(top: 25), child: msg[number]),
        Padding(padding: EdgeInsets.only(top: 10)),
        Container(
          color: Colors.white70,
          child: Center(
              child: RatingBar.builder(
            initialRating: 5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (value) {
              setState(() {
                number = value.toInt();
              });
            },
          )),
        ),
        Padding(padding: EdgeInsets.only(top: 25)),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Enviar'),
            color: CustomColors().getActivePrimaryButtonColor(),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ]),
    );
  }
}