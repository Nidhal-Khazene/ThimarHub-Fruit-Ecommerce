import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InactiveStep extends StatelessWidget {
  const InactiveStep({
    super.key,
    required this.indexValue,
    required this.textContent,
  });
  final String indexValue, textContent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 10,
          backgroundColor: const Color(0xFFF2F3F3),
          child: Text(indexValue, style: AppStyles.semiBold13),
        ),
        const SizedBox(width: 6),
        Text(
          textContent,
          style: AppStyles.semiBold13.copyWith(color: const Color(0xFFAAAAAA)),
        ),
      ],
    );
  }
}
