import 'package:ecommerce_app/features/products/presentation/views/widgets/products_search_classification_content.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/widgets/custom_search_bar.dart';

class ProductsSearchBar extends StatelessWidget {
  const ProductsSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSearchBar(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.white,
          context: context,
          builder: (context) {
            return const ProductsSearchClassificationContent();
          },
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        );
      },
      borderWidth: 0,
      fillColor: Colors.transparent,
      hintText: "ابحث عن.......",
      suffixIcon: const Icon(Iconsax.setting_4_copy),
      suffixIconColor: ColorData.kFontSecondaryColor,
      prefixIcon: const Icon(Iconsax.search_normal_1_copy),
      prefixIconColor: ColorData.kPrimaryColor,
    );
  }
}
