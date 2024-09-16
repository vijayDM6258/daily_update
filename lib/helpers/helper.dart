import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/api_model.dart';

class NewsService {
  final String apiKey = '24d89e070098451297058a069f9243bb';
  final String baseUrl = 'https://newsapi.org/v2/everything';

  Future<List<Article>> fetchNews() async {
    final response = await http.get(Uri.parse(
        '$baseUrl?q=tesla&from=2024-08-16&sortBy=publishedAt&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> articlesJson = data['articles'];
      return articlesJson.map((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
