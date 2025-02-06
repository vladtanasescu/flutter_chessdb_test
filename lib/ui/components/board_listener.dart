import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:provider/provider.dart';

class BoardListener extends StatefulWidget {

  const BoardListener({super.key});
  
  @override
  _BoardListenerState createState() => _BoardListenerState();
}

class _BoardListenerState extends State<BoardListener> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
       height: 200,
      
      child: Text(context.watch<ChessBoardController>().getFen()),
    );
  }
  
}