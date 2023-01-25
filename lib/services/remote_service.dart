import 'dart:convert';
import 'dart:math';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/model/article_model.dart';

String API_KEY = 'c47f91431a1c43ccaede48845881b175';

class RemoteServices {
  static Future<List<Article>> getArticle() async {
    final res = await http.get(Uri.parse("https://newsapi.org/v2/everything?q=Apple&from=2023-01-25&sortBy=popularity&apiKey=$API_KEY"));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];
      // print(body);
      List<Article> article = body
          .map(
            (dynamic item) => Article.fromJson(item),
          )
          .toList();
      // print(article);
      return article;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
// https://newsapi.org/v2/top-headlines?country=us&apiKey=b0aa3948f4f049f7beccc18477c3632a