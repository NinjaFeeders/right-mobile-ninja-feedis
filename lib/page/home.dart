import 'package:feedis/page/cone.dart';
import 'package:feedis/page/config.dart';
import 'package:feedis/page/feed.dart';
import 'package:feedis/page/private.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageAtual = 0;
  late PageController pc;


  @override

  void initState(){
    super.initState();
    pc = PageController(initialPage: pageAtual);
    
  }

  setPageAtual(page){
    setState(() {
      pageAtual = page;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          FeedPage(),
          ConePage(),
          PrivatePage(),
          ConfigPage(),
        ],

        onPageChanged: setPageAtual,
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageAtual,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Feedis'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Conexões'),
          BottomNavigationBarItem(icon: Icon(Icons.lock), label: 'Privado'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configurações')
        ],
        onTap: (pageAtual){
          pc.animateToPage(pageAtual, duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
