import 'package:cardapio_do_bentao/view/menuDia.dart';
import 'package:carousel_slider/carousel_slider.dart';
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

  var linkImg = {
    1: 'https://www.sympla.com.br/evento/arraia-do-bentao-2022/1591190',
    2: 'https://docs.google.com/forms/d/e/1FAIpQLSfCF2m_9a60Y10L72luKZrlKyCn4XJV4tFBRlFLBA7rsjujMQ/viewform',
    3: 'https://www.sympla.com.br/evento/arraia-do-bentao-2022/1591190',
    4: 'https://docs.google.com/forms/d/e/1FAIpQLSfCF2m_9a60Y10L72luKZrlKyCn4XJV4tFBRlFLBA7rsjujMQ/viewform',
  };

  var imgNoticia = {
    Image.asset(
      "images/junina.png",
      width: double.infinity,
      height: double.infinity,
    ),
    Image.asset(
      "images/bentotec.png",
      width: double.infinity,
      height: double.infinity,
    ),
  };

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
      body: ListView(children: <Widget>[
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
            padding: EdgeInsets.only(top: 15),
            child: Center(
                child: Text(
              "Notícias",
              style:
                  GoogleFonts.secularOne(fontWeight: FontWeight.w100).copyWith(
                color: Colors.black,
                fontSize: 25,
              ),
            ))),
        Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
              items: imgNoticia.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () async {
                        var url = Uri(
                          scheme: 'https',
                          host: 'etecbentoquirino.com.br',
                          path: '/new/cafe/',
                        );
                        if (await launchUrl(url,
                            mode: LaunchMode.externalApplication)) {
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(urlErro);
                        }
                      },
                      child: Container(
                          padding: EdgeInsets.all(2),
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: i)),
                    );
                  },
                );
              }).toList(),
            ))
      ]),
    );
  }
}

final urlErro = SnackBar(
  content: Text('Não foi possivel redirecionar!', textAlign: TextAlign.center),
  backgroundColor: Colors.redAccent,
);
