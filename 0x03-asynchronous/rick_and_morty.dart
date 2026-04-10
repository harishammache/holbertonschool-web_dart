import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> printRmCharacters() async {
    try {
        String? url = "https://rickandmortyapi.com/api/character/";

        while (url != null) {
        final response = await http.get(Uri.parse(url));

        if (response.statusCode != 200) {
            throw 'HTTP ${response.statusCode}';
        }

        final Map<String, dynamic> data = jsonDecode(response.body);

        final List<dynamic> results = data['results'];
        for (final character in results) {
            print(character['name']);
        }

        url = data['info']['next'];
        }

        return 'success';

    }
    catch (e) {
        return 'error caught: $e';
    }
}