import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_headphones/shared/app_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 34,
            color: AppColors.colorWhite,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 34,
            color: AppColors.colorRed,
          ),
        ),
      ],
    );
  }
}
