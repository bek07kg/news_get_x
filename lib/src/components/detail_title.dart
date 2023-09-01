import 'package:flutter/material.dart';
import 'package:news_get_x/src/models/articles.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({super.key, required this.news});

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
