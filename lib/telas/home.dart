import 'package:cardapio_do_bentao/telas/feedback.dart';
import 'package:cardapio_do_bentao/telas/menuSemana.dart';
import 'package:cardapio_do_bentao/telas/destaque.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _index = 0;
  late PageController pc;
  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: _index);
  }

  setPaginaAtual(pagina) {
    setState(() {
      _index = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: pc,
        children: [
          destaque(),
          menuSemana(),
          feedback(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      bottomNavigationBar: FloatingNavbar(
        
        backgroundColor: Colors.deepOrange,
        selectedBackgroundColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.stars, title: 'Destaque'),
          FloatingNavbarItem(icon: Icons.local_restaurant, title: 'Semana'),
          FloatingNavbarItem(
              icon: Icons.thumbs_up_down_rounded, title: 'Feedback'),
        ],
        onTap: (pagina) {
          pc.animateToPage(pagina,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
    );
  }
}
