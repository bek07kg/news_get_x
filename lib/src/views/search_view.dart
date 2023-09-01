import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_get_x/src/components/news_card.dart';
import 'package:news_get_x/src/constants/app_text.dart';
import 'package:news_get_x/src/controller/search_controller.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  final controller = TextEditingController();
  final ctl = Get.put(SearchCtl());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        title: TextField(
          controller: controller,
          onSubmitted: (value) async {
            await ctl.fetchData(value);
          },
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 176, 135, 52),
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await ctl.fetchData(controller.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Obx(() {
        if (ctl.isSearch) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (ctl.isSearch == false && ctl.topNews.value != null) {
          return ListView.builder(
            itemCount: ctl.topNews.value!.articles.length,
            itemBuilder: (context, index) {
              final news = ctl.topNews.value!.articles[index];
              return NewsCard(news: news);
            },
          );
        } else {
          return const Center(
            child: Text(AppText.searchText),
          );
        }
      }),
    );
  }
}
