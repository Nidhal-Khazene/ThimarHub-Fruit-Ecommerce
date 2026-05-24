import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/bottom_sheet_line_header.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/price_dynamic_range.dart';
import '../../../../../core/widgets/row_price.dart';

class ProductsSearchClassificationContent extends StatelessWidget {
  const ProductsSearchClassificationContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 13,
        right: 22,
      ),
      child: SingleChildScrollView(
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
              const SizedBox(height: 7),
              const Text("تصنيف حسب :", style: AppStyles.bold19),
              const SizedBox(height: 11),
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Icon(Iconsax.tag_copy, color: Colors.black),
                    SizedBox(width: 8),
                    Text("السعر :", style: AppStyles.bold13),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: RowPrice(),
              ),
              const SizedBox(height: 48),
              const PriceDynamicRange(),
              const SizedBox(height: 24),
              CustomButton(
                backgroundColor: ColorData.kPrimaryColor,
                text: "تصفيه",
                textStyle: AppStyles.bold16.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
