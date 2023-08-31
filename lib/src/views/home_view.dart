import 'package:flutter/material.dart';
import 'package:news_get_x/src/constants/app_text.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: const Text(
          AppText.appBarText,
          style: TextStyle(color: AppColors.white, fontSize: 20),
        ),
      ),
    );
  }
}
