import 'package:get/state_manager.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/remote_service.dart';

class NewsController extends GetxController {
  // ignore: deprecated_member_use
  List newsList = <Article>[].obs;
  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    var news = await RemoteServices().getArticle();
    if (news.isNotEmpty) {
      newsList = news.toList();
    }
  }
}
