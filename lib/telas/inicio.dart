// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, camel_case_types

// ignore: unused_import
import 'package:cardapio_do_bentao/main.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:flutter/material.dart';

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
                padding: EdgeInsets.only(bottom: 100),
                child: Container(
                  width: 330,
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Seja bem vindo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
            Center(
                child: Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SelectFormField(
                      type: SelectFormFieldType.dropdown, // or can be dialog
                      initialValue: 'Periodo',
                      labelText: 'Período',
                      items: _periodos,
                      onChanged: (val) => print(val),
                      onSaved: (val) => print(val),
                    ),
                  ),
                  SelectFormField(
                    type: SelectFormFieldType.dropdown, // or can be dialog
                    initialValue: 'circle',
                    labelText: 'Período',
                    items: _cursos,
                    onChanged: (val) => print(val),
                    onSaved: (val) => print(val),
                  ),
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.all(8),
              // ignore: deprecated_member_use
              child: RaisedButton(child: Text('Continuar'), onPressed: () {}),
            ),
            Padding(
              child: Image.asset(
                "images/etec.png",
                width: 182,
                height: 91,
              ),
              padding: EdgeInsets.only(top: 80),
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
