import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_chessdb_test/state/explore_state.dart';
import 'package:provider/provider.dart';

class PositionStatistics extends StatefulWidget {

  const PositionStatistics({super.key});
  
  @override
  _PositionStatisticsState createState() => _PositionStatisticsState();
}

class _PositionStatisticsState extends State<PositionStatistics> {

  @override
  void initState() {
    super.initState();

    ChessBoardController chessBoardController = context.read<ChessBoardController>();
    chessBoardController.addListener(() {
      print("call listener");
      context.read<ExploreState>().updateStats(chessBoardController.getFen());
    });
  }

  @override
  Widget build(BuildContext context) { 

    return SizedBox(
       height: 200,
      
      child: Column(
        children: [
          Text(context.watch<ChessBoardController>().getFen()),
          Text(context.watch<ExploreState>().stats)
        ],
      ),
    );
  }
}