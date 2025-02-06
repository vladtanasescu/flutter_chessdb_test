import 'package:flutter/material.dart';
import 'package:stockfish/stockfish.dart';

class MovesList extends StatefulWidget {

  const MovesList({super.key});
  
  @override
  _MovesListState createState() => _MovesListState();
}

class _MovesListState extends State<MovesList> {

  String _stockfishOutput = "";
  Stockfish ?stockfish = null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    stockfish ??= Stockfish();
    print(stockfish?.state.value);

    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                if (stockfish == null) {
                  stockfish = Stockfish();
                  print(stockfish?.state.value);
                }
              }, 
              child: Text("start"),
            ),
            ElevatedButton(
              onPressed: () {
                if (stockfish != null) {
                  print(stockfish?.state.value);
                  stockfish?.dispose();
                }
              }, 
              child: Text("stop"),
            ),
            ElevatedButton(
              onPressed: () {
                if (stockfish != null) {
                  print(stockfish?.state.value);
                  stockfish?.stdin = "position startpos";
                  stockfish?.stdin = "go depth 25";
                  
                  print(stockfish?.state.value);

                  stockfish?.stdout.listen((line) {
                    // do something useful
                    print("AAA = " + line);

                    setState(() {
                      _stockfishOutput = line;
                    });
                  });
                }
              }, 
              child: Text("compute"),
            ),
          ],
        ),

        Text("moves list"),
        Text(_stockfishOutput),
      ],
    );
  }
}