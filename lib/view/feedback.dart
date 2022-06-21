// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:cardapio_do_bentao/values/custonColor.dart';
import 'package:google_fonts/google_fonts.dart';

int voto = 0;
//===============================================POS_FEEDBACK!!!==============================================

class posfeed extends StatelessWidget {
  const posfeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Feedback",
            style: GoogleFonts.secularOne(fontWeight: FontWeight.w100),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.deepOrange, Colors.yellow]),
            ),
            height: 300,
            padding: EdgeInsets.only(left: 300),
            child: Image.asset("images/cardapioBentaoBar.png",
                height: 149, width: 84),
          ),
        ),
        body: ListView(children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 275)),
          Center(
              child: Container(
                  child: Text("Obrigado!",
                      style: GoogleFonts.secularOne(fontWeight: FontWeight.w500)
                          .copyWith(fontSize: 40)))),
          Padding(padding: EdgeInsets.only(top: 30)),
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Voltar',
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w500)
                      .copyWith(fontSize: 30),
                ),
                color: CustomColors().getActivePrimaryButtonColor(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          )
        ]));
  }
}

//===============================================FEEDBACK!!!==================================================

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  var number = 3;

  double? value;
  double? _ratingValue;

  //array
  var imgEmogi = {
    1: Image.asset("images/emogi1.png", width: 210, height: 210),
    2: Image.asset("images/emogi2.png", width: 210, height: 210),
    3: Image.asset("images/emogi3.png", width: 210, height: 210),
    4: Image.asset("images/emogi4.png", width: 210, height: 210),
    5: Image.asset("images/emogi5.png", width: 210, height: 210),
  };

  var msg = {
    1: Text("Muito Insatisfeito!",
        style: GoogleFonts.secularOne().copyWith(
            fontSize: 25, color: Colors.black87, fontWeight: FontWeight.w100),
        textAlign: TextAlign.center),
    2: Text("Insatisfeito!",
        style: GoogleFonts.secularOne().copyWith(
            fontSize: 25, color: Colors.black87, fontWeight: FontWeight.w100),
        textAlign: TextAlign.center),
    3: Text("Bom!",
        style: GoogleFonts.secularOne().copyWith(
            fontSize: 25, color: Colors.black87, fontWeight: FontWeight.w100),
        textAlign: TextAlign.center),
    4: Text("Muito Bom!",
        style: GoogleFonts.secularOne().copyWith(
            fontSize: 25, color: Colors.black87, fontWeight: FontWeight.w100),
        textAlign: TextAlign.center),
    5: Text("Exelente!",
        style: GoogleFonts.secularOne().copyWith(
            fontSize: 25, color: Colors.black87, fontWeight: FontWeight.w100),
        textAlign: TextAlign.center),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Feedback",
            style: GoogleFonts.secularOne(fontWeight: FontWeight.w100),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.deepOrange, Colors.yellow]),
            ),
            height: 300,
            padding: EdgeInsets.only(left: 300),
            child: Image.asset(
              "images/cardapioBentaoBar.png",
              height: 50,
              width: 50,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            //ListView da scrow pra rola a tela
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                  child: Text(
                "Você está satisfeito com prato? \n deixe sua avaliação!",
                style: GoogleFonts.secularOne()
                    .copyWith(fontSize: 25, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              )),
            ),
            Padding(
                padding: EdgeInsets.only(top: 40),
                child: Center(child: imgEmogi[number])),
            Container(padding: EdgeInsets.only(top: 25), child: msg[number]),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              child: Center(
                  child: RatingBar.builder(
                itemSize: 50,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1),
                itemBuilder: (context, _) => Icon(
                  Icons.star_rounded,
                  color: Colors.amber,
                ),
                onRatingUpdate: (value) {
                  setState(() {
                    number = value.toInt();
                  });
                },
              )),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    if (voto == 0) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => posfeed()));
                      voto = voto + 1;
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  });
                },
                child: Text(
                  'Avaliar',
                  style: GoogleFonts.secularOne(fontWeight: FontWeight.w500)
                      .copyWith(fontSize: 20),
                ),
                color: CustomColors().getActivePrimaryButtonColor(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ));
  }
}

final snackBar = SnackBar(
  content: Text('Você já avaliou o prato hoje!', textAlign: TextAlign.center),
  backgroundColor: Colors.green,
);
