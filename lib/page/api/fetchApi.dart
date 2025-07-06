import 'dart:convert';

import 'package:slicing_1/page/api/News.dart';
import 'package:http/http.dart' as http;


Future<List<News>> fetchApi () async {
  final api = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final getApi = await http.get(api);
  if (getApi.statusCode == 200) {
    final data = jsonDecode(getApi.body);
    return (data as List).map((item) => News.fromJson(item)).toList();
  } else {
    throw Exception("Error Load Data");
  }
}