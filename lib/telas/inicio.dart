// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, camel_case_types, deprecated_member_us
// ignore: unused_import
import 'package:cardapio_do_bentao/main.dart';
import 'package:cardapio_do_bentao/telas/home.dart';
import 'package:cardapio_do_bentao/values/custonColor.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  _inicioState createState() => _inicioState();
}

class _inicioState extends State<inicio> with SingleTickerProviderStateMixin {
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
                Colors.deepOrange,
                Colors.yellowAccent,
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
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  width: 330,
                  height: 50,
                  child: Text(
                    "Selecione:",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.secularOne()
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 21),
                  ),
                )),
            Center(
                child: Form(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SelectFormField(
                      changeIcon: true,
                      type: SelectFormFieldType.dropdown, // or can be dialog
                      initialValue: 'Periodo',
                      style: GoogleFonts.secularOne()
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
                      labelText: 'Período',

                      items: _periodos,
                      onChanged: (val) => print(val),
                      onSaved: (val) => print(val),
                    ),
                  ),
                  SelectFormField(
                    type: SelectFormFieldType.dropdown, // or can be dialog
                    initialValue: 'Cursos',
                    style: GoogleFonts.secularOne()
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
                    labelText: 'Cursos',
                    items: _cursos,
                    onChanged: (val) => print(val),
                    onSaved: (val) => print(val),
                  ),
                ],
              ),
            )),
            Padding(padding: EdgeInsets.only(top: 50)),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => home()),
                    ),
                  );
                },
                child: Text(
                  'Confirmar',
                  style: GoogleFonts.secularOne()
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                color: CustomColors().getActivePrimaryButtonColor(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
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

final List<Map<String, dynamic>> _periodos = [
  {
    'value': 'Integrado',
    'label': 'Tecnico integrado - Manhã e tarde',
  },
  {
    'value': 'Modular',
    'label': 'Tecnico modular - Noturno',
  },
];

final List<Map<String, dynamic>> _cursos = [
  {
    'value': 'Adiministracao',
    'label': 'Administração',
  },
  {
    'value': 'Contabilidade',
    'label': 'Contabilidade',
  },
  {
    'value': 'Logistica',
    'label': 'Logística',
  },
  {
    'value': 'RecursosHumanos',
    'label': 'Recursos humanos',
  },
  {
    'value': 'Eletronica',
    'label': 'Eletrônicao',
  },
  {
    'value': 'Mecanica',
    'label': 'Mecânica',
  },
  {
    'value': 'DesenvolvimentoSistemas',
    'label': 'Desenvolvimento de Sistemas',
  },
  {
    'value': 'SistemasEnergiaRenovavel',
    'label': 'Sistemas de Energia Renovável (EAD)',
  },
];
