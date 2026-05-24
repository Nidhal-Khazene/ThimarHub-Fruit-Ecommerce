import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.leadingIcon, required this.title});

  final IconData? leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios, size: 20),
        ),
        Text(
          title,
          style: AppStyles.bold19.copyWith(color: const Color(0xFF0C0D0D)),
        ),
        Icon(leadingIcon, color: const Color(0xFF949D9E), size: 20) ??
            const SizedBox(),
      ],
    );
  }
}
