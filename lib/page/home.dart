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
      ),
    );
  }
}
