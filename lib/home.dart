import 'package:flutter/material.dart';
import 'play_chess.dart';
import 'learn_chess.dart';
import 'chess_news.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    LearnChess(Colors.blue.shade100),
    PlayChess(),
    ChessNews(Colors.indigo.shade100)
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Chess - Learn & Play'),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.camera), onPressed: fabPressed),
      body: _children[_currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex:
              _currentIndex, //this will be set when a new tab is tapped
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.wb_incandescent),
              label: '',
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.play_circle_filled),
              label: '',
            ),
            new BottomNavigationBarItem(
              icon: const Icon(Icons.group),
              label: '',
            ),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void fabPressed() {}
}
