import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/model/article_model.dart';

String API_KEY = 'b0aa3948f4f049f7beccc18477c3632a';

class RemoteServices {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=Apple&from=2022-12-21&sortBy=popularity&apiKey=$API_KEY";
  Future<List<Article>> getArticle() async {
    final res = await http.get(Uri.parse(endPointUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> article = body
          .map(
            (dynamic item) => Article.fromJson(item),
          )
          .toList();
      return article;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
