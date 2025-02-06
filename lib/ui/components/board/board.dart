import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:provider/provider.dart';

class Board extends StatefulWidget {

  const Board({super.key});
  
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {

  final String _fen = "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: ChessBoard(
        controller: Provider.of<ChessBoardController>(context),
        boardColor: BoardColor.green,
        boardOrientation: PlayerColor.white,
      ),
    );
  }

}