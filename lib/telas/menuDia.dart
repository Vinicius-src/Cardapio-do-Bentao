import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text("Menu do dia",
            style:
                GoogleFonts.secularOne().copyWith(fontWeight: FontWeight.w500)),
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
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "Café da manhã 8h às 9h",
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w100)
                      .copyWith(color: Colors.white, fontSize: 20),
                )))),
        Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Text("variaver do cardapio"),
            )),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "Almoço 11h às 12h",
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w100)
                      .copyWith(color: Colors.white, fontSize: 20),
                )))),
        Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Text("variaver do cardapio"),
            )),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "Lanche da tarde 14h30 às 15h30",
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w100)
                      .copyWith(color: Colors.white, fontSize: 20),
                )))),
        Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Text("variaver do cardapio"),
            )),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                    child: Text(
                  "Jantar 19h às 20h",
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w100)
                      .copyWith(color: Colors.white, fontSize: 20),
                )))),
        Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Text("variaver do cardapio"),
            )),
      ]),
    );
  }
}
