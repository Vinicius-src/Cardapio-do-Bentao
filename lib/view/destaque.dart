import 'package:cardapio_do_bentao/view/menuDia.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: Text(
          "Destaque",
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
              style: GoogleFonts.secularOne()
                  .copyWith(fontSize: 25, fontWeight: FontWeight.w100),
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

    var linkImg = {
      1: 'https://www.sympla.com.br/evento/arraia-do-bentao-2022/1591190',
      2: 'https://docs.google.com/forms/d/e/1FAIpQLSfCF2m_9a60Y10L72luKZrlKyCn4XJV4tFBRlFLBA7rsjujMQ/viewform',
      3: 'https://www.sympla.com.br/evento/arraia-do-bentao-2022/1591190',
      4: 'https://docs.google.com/forms/d/e/1FAIpQLSfCF2m_9a60Y10L72luKZrlKyCn4XJV4tFBRlFLBA7rsjujMQ/viewform',
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
              child: TextButton(
                  child: Card(
                    elevation: 100,
                    color: Colors.white,
                    child: Center(child: imgNoticia[nimgNoticia++]),
                  ),
                  onPressed: () async {
                    String url = 'https://etecbentoquirino.com.br/new/';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      print("Não foi possivel redirecionar");
                    }
                  }));
        });
  }
}
