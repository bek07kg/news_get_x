import 'package:flutter/material.dart';
import 'package:news_get_x/src/models/articles.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class DetailDesc extends StatelessWidget {
  const DetailDesc({super.key, required this.news});

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.description ?? '',
      style: const TextStyle(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
