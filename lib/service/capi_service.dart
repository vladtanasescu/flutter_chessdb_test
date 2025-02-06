import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<String> getPositionStats(String fen) async {
  final response = await http.post(
    Uri.parse('http://10.0.2.2:8080/position'), 
    headers: <String, String>{
      'Content-Type': 'application/text',
    },
    body: _removeMoveNumbers(fen));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    // return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);

    // Map response = jsonDecode(response.body) as Map<String, dynamic>;

    print(response.body);

    return response.body;
  } else {
    // throw Exception('Failed to load album');
    return "";
  }
}

String _removeMoveNumbers(String fen) {
  List<String> split = fen.split(" ");
  split.removeLast();
  split.removeLast();
  return split.join(" ");
}