import 'package:flutter/material.dart';
import 'package:news_get_x/src/constants/api_const.dart';
import 'package:news_get_x/src/models/articles.dart';
import 'package:news_get_x/src/views/detail_view.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailView(news: news),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  news.urlToImage ?? ApiConst.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                flex: 5,
                child: Text(
                  news.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
