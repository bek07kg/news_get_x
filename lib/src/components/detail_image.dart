import 'package:flutter/material.dart';
import 'package:news_get_x/src/constants/api_const.dart';
import 'package:news_get_x/src/models/articles.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key, required this.news});

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      news.urlToImage ?? ApiConst.image,
      fit: BoxFit.fitWidth,
    );
  }
}
