
import 'package:flutter/material.dart';
import 'package:flutter_chessdb_test/service/capi_service.dart';

class ExploreState extends ChangeNotifier {
  String _stats = "";

  String get stats => _stats;

  updateStats(String fen) async {
    _stats = await getPositionStats(fen);

    print("new stats = $_stats");

    notifyListeners();
  }
}