import 'dart:math' as math;

import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/products_ranking_content.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CustomProductsHeader extends StatelessWidget {
  const CustomProductsHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyles.bold16),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.white,
              context: context,
              builder: (context) {
                return const ProductsRankingContent();
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            );
          },
          child: Container(
            width: 44,
            height: 31,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5.5),
            decoration: ShapeDecoration(
              color: Colors.white.withValues(alpha: 0.10),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0x66CACECE)),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Transform.rotate(
              alignment: Alignment.center,
              angle: math.pi / 2,
              child: Icon(
                Iconsax.arrow_swap_horizontal_copy,
                size: 20,
                color: ColorData.kFontSecondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
