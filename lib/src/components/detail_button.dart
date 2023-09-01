import 'package:flutter/material.dart';
import 'package:news_get_x/src/theme/app_colors.dart';

class DetailButton extends StatelessWidget {
  const DetailButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.orange,
      ),
      child: const Text("Read More"),
    );
  }
}
