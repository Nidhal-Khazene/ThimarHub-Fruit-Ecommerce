import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class ProductDetailsItem extends StatelessWidget {
  const ProductDetailsItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
  final Widget title, subtitle, trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: ColorData.kBorderColor, width: 1),
        ),
      ),
      child: ListTile(
        title: title,
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: subtitle,
        ),
        trailing: SizedBox(width: 35, height: 35, child: trailing),
      ),
    );
  }
}
