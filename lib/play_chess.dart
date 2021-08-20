import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_chess_board/flutter_chess_board.dart';

class PlayChess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new PlayChessPage(),
    );
  }
}

class PlayChessPage extends StatefulWidget {
  @override
  _PlayChessPageState createState() => _PlayChessPageState();
}

class _PlayChessPageState extends State<PlayChessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChessBoard(
              onMove: (move) {
                print(move);
              },
              onCheckMate: (color) {
                print(color);
              },
              onDraw: () {},
              onCheck: (color) {
                print(color);
              },
              size: MediaQuery.of(context).size.width,
              enableUserMoves: true,
              boardType: BoardType.orange,
            )
          ],
        ),
      ),
    );
  }
}
