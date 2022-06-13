import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:intl/intl.dart';

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
            child: Image.asset("images/cardapioBentao.png",
                height: 149, width: 84),
          ),
        ),
        body: Column(children: <Widget>[
          Expanded(child: calendario()),
        ]));
  }
}

class calendario extends StatefulWidget {
  @override
  _menuCalendario createState() => _menuCalendario();
}

class _menuCalendario extends State<calendario> {
  final CalendarWeekController _controller = CalendarWeekController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(children: [
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 1)
              ]),
              child: CalendarWeek(
                controller: _controller,
                height: 130,
                showMonth: false,
                minDate: DateTime.now().add(
                  Duration(days: -3),
                ),
                maxDate: DateTime.now().add(
                  Duration(days: 3),
                ),
                onDatePressed: (DateTime datetime) {
                  // Do something
                  setState(() {});
                },
                monthViewBuilder: (DateTime time) => Align(
                  alignment: FractionalOffset.center,
                  child: Row(children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      //AppLocalizations.of(context)!.JUNE),
                      DateFormat.yMMMM().format(time),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                  ]),
                ),
                decorations: [
                  DecorationItem(
                      decorationAlignment: FractionalOffset.bottomRight,
                      date: DateTime.now(),
                      decoration: Icon(
                        Icons.today,
                        color: Colors.blue,
                      )),
                ],
              )),
          Expanded(child: menuCardapio()),
        ]),
      );
}

class menuCardapio extends StatelessWidget {
  const menuCardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(children: <Widget>[
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
                    "Café da manhã 8h às 9h",
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
