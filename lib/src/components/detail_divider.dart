import 'package:flutter/material.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class DetailDivider extends StatelessWidget {
  const DetailDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.grey,
      height: 20,
      thickness: 2,
    );
  }
}
