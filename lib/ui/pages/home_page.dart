import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart' as chess_board;
import 'package:flutter_chessdb_test/service/capi_service.dart';
import 'package:flutter_chessdb_test/ui/components/logo.dart';
import 'package:flutter_chessdb_test/ui/pages/explore_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  chess_board.ChessBoardController controller = chess_board.ChessBoardController();


  @override
  Widget build(BuildContext context) {

    controller.loadFen("r1b5/pp4p1/3Rk2p/4P1q1/2B1Q2b/8/PPP3P1/1K6 b - - 2 20");

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Logo(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  buildMenuButton(context, "Explore", () { 
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ExplorePage()),
                      );
                    }
                  ),
              // buildMenuButton(context, "Games search", () {}),
              // buildMenuButton(context, "Study openings", () {}),
              // buildMenuButton(context, "Study endings", () {}),
              buildMenuButton(context, "Settings", () {
                // getPositionStats();
              }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuButton(BuildContext context, String text, VoidCallback? onPressed) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 2),
      child: ElevatedButton(
        onPressed: onPressed,
        style:  ElevatedButton.styleFrom(
          foregroundColor: Color.fromRGBO(255, 255, 255, 0.8),
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.1),
          minimumSize: Size(260, 40),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        child: Text(
          text, 
          style: TextStyle(
            fontSize: 18,
            color: Colors.white
            ),)
      ),
    );
  }
}