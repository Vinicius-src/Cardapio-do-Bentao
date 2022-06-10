import 'package:cardapio_do_bentao/telas/menuDia.dart';
import 'package:flutter/material.dart';

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
      body: Column(children: <Widget>[
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
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text(
              "Noticias",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 25),
            )),
        Expanded(child: GridPrincipal())
      ]),
    );
  }
}

class GridPrincipal extends StatelessWidget {
  const GridPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var imgNoticia = {
      1: Image.asset(
        "images/junina.jpg",
        width: double.infinity,
        height: double.infinity,
      ),
      2: Image.asset(
        "images/bentotec.jpg",
        width: double.infinity,
        height: double.infinity,
      ),
      3: Image.asset(
        "images/junina.jpg",
        width: double.infinity,
        height: double.infinity,
      ),
      4: Image.asset("images/bentotec.jpg",
          width: double.infinity, height: double.infinity),
    };
    int nimgNoticia = 1;

    return GridView.builder(
        itemCount: imgNoticia.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
              height: 200,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Card(
                elevation: 100,
                color: Colors.white30,
                child: Center(child: imgNoticia[nimgNoticia++]),
              ));
        });
  }
}
 /*GridView.builder(
        itemCount: imgNoticia.length,
        childAspectRatio: (2 / 2),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemBuilder: (BuildContext ctx, int index) {
          return Container(
              height: 200,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Card(
                elevation: 100,
                color: Colors.grey,
                child: Center(child: imgNoticia[nimgNoticia++]),
              ));
        });*/