import 'package:feedis/components/feed_struct.dart';
import 'package:feedis/repository/colector.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {

    final feedMessage = Colector.tabela;
          
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Feed principal'),
        ),
        body: ListView.separated(itemBuilder: (BuildContext context, int message){
          return FeedStruct(userName: feedMessage[message].user, title: feedMessage[message].title, isPrivate: feedMessage[message].status, content: feedMessage[message].bodyMessage,
          );
        },
         padding:  EdgeInsets.all(16), separatorBuilder: (_, __) => Divider(), itemCount: feedMessage.length),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 255, 21, 165),
          tooltip: 'Increment',
          onPressed: (){},
          child: const Icon(Icons.add, color: Colors.white, size: 28),
          ),
      )
    );
  }
}