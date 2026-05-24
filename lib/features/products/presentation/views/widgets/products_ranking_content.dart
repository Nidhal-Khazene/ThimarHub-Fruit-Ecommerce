import 'package:ecommerce_app/core/widgets/circle_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/bottom_sheet_line_header.dart';
import '../../../../../core/widgets/custom_button.dart';

class ProductsRankingContent extends StatefulWidget {
  const ProductsRankingContent({super.key});
  static List<String> list = const [
    "السعر ( الأقل الي الأعلي )",
    "السعر ( الأعلي الي الأقل )",
    "الأبجديه",
  ];

  @override
  State<ProductsRankingContent> createState() => _ProductsRankingContentState();
}

class _ProductsRankingContentState extends State<ProductsRankingContent> {
  int selectBoxIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 32, left: 13, right: 22),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.center,
              child: BottomSheetLineHeader(
                lineColor: Color(0xFF131F46),
                width: 60,
                height: 3,
              ),
            ),
            const SizedBox(height: 26),
            const Text("ترتيب حسب :", style: AppStyles.bold19),
            const SizedBox(height: 32),
            Column(
              spacing: 16,
              children: List.generate(ProductsRankingContent.list.length, (
                index,
              ) {
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectBoxIndex = index;
                        });
                      },
                      child: CircleCheckBox(isActive: selectBoxIndex == index),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      ProductsRankingContent.list[index],
                      style: AppStyles.bold13,
                    ),
                  ],
                );
              }),
            ),
            const SizedBox(height: 11),
            CustomButton(
              backgroundColor: ColorData.kPrimaryColor,
              text: "تصفيه",
              textStyle: AppStyles.bold16.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
