import 'package:get/get.dart';
import 'package:news_get_x/src/models/top_news.dart';
import 'package:news_get_x/src/services/fetch_service.dart';

class FetchCtl extends GetxController {
  Rx<TopNews?> topNews = Rxn();

  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }

  Future<void> fetchNews([String? domain]) async {
    topNews.value = await NewsRepo().fetchTopNews(domain);
  }
}
