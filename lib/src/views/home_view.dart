import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_get_x/src/components/news_card.dart';
import 'package:news_get_x/src/constants/app_text.dart';
import 'package:news_get_x/src/controller/fetch_controller.dart';
import 'package:news_get_x/src/models/country_model.dart';
import 'package:news_get_x/src/theme/app_colors.dart';
import 'package:news_get_x/src/views/search_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final ctl = Get.put(FetchCtl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(color: AppColors.white, fontSize: 20),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (Country item) async {
              await ctl.fetchNews(item.domain);
            },
            itemBuilder: (context) {
              return countrySet
                  .map(
                    (e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            },
          ),
        ],
      ),
      body: Obx(
        () => ctl.topNews.value == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: ctl.topNews.value?.articles.length ?? 0,
                itemBuilder: (context, index) {
                  final news = ctl.topNews.value!.articles[index];
                  return NewsCard(news: news);
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchView(),
          ),
        ),
        backgroundColor: AppColors.orange,
        child: const Icon(Icons.search),
      ),
    );
  }
}
