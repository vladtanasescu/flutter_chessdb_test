import 'package:flutter/material.dart';
import 'package:flutter_chessdb_test/state/explore_state.dart';
import 'package:flutter_chessdb_test/ui/components/board/board.dart';
import 'package:flutter_chessdb_test/ui/components/board_listener.dart';
import 'package:flutter_chessdb_test/ui/components/moves_list.dart';
import 'package:flutter_chessdb_test/ui/components/position_statistics.dart';
import 'package:provider/provider.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  static const double MOVES_WIDTH = 60;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        // backgroundColor: Colors.pink,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Explore', 
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16), 
        child: Column( children: [
          Row(
            children: [
              Expanded(
                child: Board(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildMenuButton(context, "Moves", true, () {}),
                buildMenuButton(context, "Statistics", false, () {
                  // context.read<ExploreState>().updateStats();
                }),
                buildMenuButton(context, "Analysis", false, () {}),
              ],
            ),
          ),
          MovesList(),
          BoardListener(),
          // PositionStatistics()
          ],
        ),
      ),
    );
  }

    Widget buildMenuButton(BuildContext context, String text, bool isSelected, VoidCallback? onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style:  ElevatedButton.styleFrom(
        foregroundColor: Color.fromRGBO(255, 255, 255, 0.8),
        backgroundColor: isSelected? Color.fromRGBO(255, 255, 255, 0.2) : Color.fromRGBO(255, 255, 255, 0.1),
        minimumSize: Size(120, 40),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      child: Text(
        text, 
        style: TextStyle(
          fontSize: 16,
          // fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          color: Colors.white
          ),)
    );
  }
}
