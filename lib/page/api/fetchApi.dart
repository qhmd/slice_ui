import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:slicing_1/page/api/News.dart';

Future<List<dynamic>> fetchApi() async {
  try {
    final api = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final results = await http.get(api, headers: {
      "Accept" : "application/json",
      "User-Agent" : "Moziila/5.0"
    });
    print(results.statusCode);
    if (results.statusCode == 200) {
      final List<dynamic> data = jsonDecode(results.body);
      return data.map((item) => News.fromJson(item)).toList();
    } else {
      throw Exception("Failed to get data");
    }
  } catch (e) {
    throw Exception("Error ${e}");
  }
}
