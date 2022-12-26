import 'dart:math';

import 'package:get/state_manager.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/remote_service.dart';

class NewsController extends GetxController {
  // ignore: deprecated_member_use
  var newsList = <Article>[].obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    isLoading(true);
    var news = await RemoteServices.getArticle();
    // print(news[0].author);
    if (news != null) {
      newsList.value = news;
    }
    isLoading(false);
  }
}
