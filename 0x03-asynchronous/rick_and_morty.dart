import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> printRmCharacters() async {
    try {
        final response = await http.get(
        Uri.parse('https://rickandmortyapi.com/api/character'),
        );

        if (response.statusCode != 200) {
            throw 'HTTP ${response.statusCode}';
        }

        final Map<String, dynamic> data = jsonDecode(response.body);
        final List<dynamic> results = data['results'];

        for (final character in results) {
            print(character['name']);
        }

        return 'success';
    }
    catch (e) {
        return 'error caught: $e';
    }
}