import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ActiveStep extends StatelessWidget {
  const ActiveStep({super.key, required this.textContent});
  final String textContent;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: ColorData.kPrimaryColor,
          child: const Icon(Icons.check, color: Colors.white, size: 15),
        ),
        const SizedBox(width: 6),
        Text(textContent, style: AppStyles.bold13),
      ],
    );
  }
}
