import 'package:get/get.dart';
import 'package:news_get_x/src/models/top_news.dart';
import 'package:news_get_x/src/services/fetch_service.dart';

class SearchCtl extends GetxController {
  Rx<TopNews?> topNews = Rxn();
  bool isSearch = false;

  Future<void> fetchData(String text) async {
    isSearch = true;
    topNews.value = await NewsRepo().fetchSearchNews(text);
    isSearch = false;
  }
}
