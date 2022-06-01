import 'package:cardapio_do_bentao/telas/destaque.dart';
import 'package:cardapio_do_bentao/telas/feedback.dart';
import 'package:cardapio_do_bentao/telas/vote.dart';
import 'package:flutter/material.dart';

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
          child:
              Image.asset("images/cardapioBentao.png", height: 149, width: 84),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 70,
        color: Colors.deepOrange,
        padding: EdgeInsets.fromLTRB(30, 3, 30, 3),
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => destaque()),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.stars,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
                Text(
                  "Destaque",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => menuSemana()),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.local_restaurant,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Menu da Semana",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => vote()),
                      ),
                    );
                  },
                  icon: Icon(Icons.info, size: 40, color: Colors.white),
                ),
                Text(
                  "Vote",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => feedback()),
                      ),
                    );
                  },
                  icon: Icon(Icons.thumbs_up_down_rounded,
                      size: 40, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Feedback",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
