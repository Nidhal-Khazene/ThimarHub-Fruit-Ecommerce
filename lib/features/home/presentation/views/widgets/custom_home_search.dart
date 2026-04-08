import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/widgets/custom_search_bar.dart';

class CustomHomeSearch extends StatelessWidget {
  const CustomHomeSearch({super.key, required this.enabled});
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchView.routeName);
      },
      child: CustomSearchBar(
        enabled: enabled,
        borderWidth: 0,
        borderColor: Colors.transparent,
        fillColor: Colors.transparent,
        hintText: "ابحث عن.......",
        suffixIcon: const Icon(Iconsax.setting_4_copy),
        suffixIconColor: ColorData.kFontSecondaryColor,
        prefixIcon: const Icon(Iconsax.search_normal_1_copy),
        prefixIconColor: ColorData.kPrimaryColor,
      ),
    );
  }
}
