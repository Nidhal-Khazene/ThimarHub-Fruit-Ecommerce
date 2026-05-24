import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/best_selling/presentation/views/best_selling_view.dart';
import 'package:flutter/material.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("الأكثر مبيعًا", style: AppStyles.bold13),
        GestureDetector(
          onDoubleTap: () {
            Navigator.pushNamed(context, BestSellingView.routeName);
          },
          child: Text(
            "المزيد",
            style: AppStyles.regular13.copyWith(
              color: ColorData.kFontSecondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
