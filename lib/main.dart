import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:flutter_chessdb_test/state/explore_state.dart';
import 'package:flutter_chessdb_test/theme/theme.dart';
import 'package:flutter_chessdb_test/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChessBoardController()),
        ChangeNotifierProvider(create: (_) => ExploreState())
      ],
      child: const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MaterialTheme(createTextTheme(context, "Roboto", "Roboto")).dark(),
      home: const HomePage(),
    );
  }
}
