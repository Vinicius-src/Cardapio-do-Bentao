// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, camel_case_types, deprecated_member_us
// ignore: unused_import
import 'dart:convert';

import 'package:cardapio_do_bentao/main.dart';
import 'package:cardapio_do_bentao/model/user_model.dart';
import 'package:cardapio_do_bentao/telas/home.dart';
import 'package:cardapio_do_bentao/values/custonColor.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class inicio extends StatefulWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  _inicioState createState() => _inicioState();
}

class _inicioState extends State<inicio> with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _periodoController = TextEditingController();
  final _cursoController = TextEditingController();

  testandoSelecao() {
    if (_periodoController.text == '' || _cursoController.text == '') {
      return false;
    } else {
      return true;
    }
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
                Colors.yellowAccent,
                Colors.deepOrange,
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              child: Image.asset("images/cardapioBentao.png",
                  width: 150, height: 130),
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
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: SelectFormField(
                      controller: _periodoController,
                      changeIcon: true,
                      type: SelectFormFieldType.dropdown, // or can be dialog
                      style: GoogleFonts.secularOne()
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
                      labelText: 'Período',

                      items: _periodos,
                      onChanged: (val) => _periodoController,
                      validator: (val) {
                        if (val == null || val.isEmpty) {
                          return 'selecione seu período';
                        }
                        return null;
                      },
                      onSaved: (val) => _periodoController,
                    ),
                  ),
                  SelectFormField(
                    controller: _cursoController,
                    type: SelectFormFieldType.dropdown, // or can be dialog
                    style: GoogleFonts.secularOne()
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 15),
                    labelText: 'Cursos',
                    items: _cursos,
                    onChanged: (val) => _cursoController,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'selecione seu curso';
                      }
                      return null;
                    },
                    onSaved: (val) => _cursoController,
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {}
                        bool deuCerto = await login();

                        if (deuCerto) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => home()),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }

                        setState(() {
                          print(_periodoController.text);
                          print(_cursoController.text);
                        });
                      },
                      child: Text(
                        'Confirmar',
                        style: GoogleFonts.secularOne().copyWith(
                            fontWeight: FontWeight.w500, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: CustomColors().getActivePrimaryButtonColor(),
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                    ),
                  ),
                ],
              ),
            )),
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

  final snackBar = SnackBar(
    content: Text('Slecione seu periodo e curso, por favor',
        textAlign: TextAlign.center),
    backgroundColor: Colors.redAccent,
  );

  Future<bool> login() async {
    bool _resposta = testandoSelecao();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Usuario novoUsuario = Usuario(
      periodo: _periodoController.text,
      curso: _cursoController.text,
    );
    _saveUsuario(novoUsuario);

    if (_resposta == true) {
      await sharedPreferences.setString('token', 'Permitido');
      return true;
    } else {
      return false;
    }
  }
}

void _saveUsuario(Usuario usuario) async {
  SharedPreferences saveUsuario = await SharedPreferences.getInstance();
  saveUsuario.setString(
    "IformacoesUsuario",
    json.encode( usuario.toJson()),
  );
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
