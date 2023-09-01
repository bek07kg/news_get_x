import 'package:flutter/material.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class DetailDate extends StatelessWidget {
  const DetailDate({super.key, required this.time});

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.access_time,
          color: AppColors.grey,
          size: 30,
        ),
        const SizedBox(width: 10),
        Text(
          time,
          style: const TextStyle(
            color: AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
