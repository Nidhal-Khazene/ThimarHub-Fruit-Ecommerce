import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/styles.dart';
import 'custom_text_form_field.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintTextAlign: TextAlign.center,
      hintText: "0",
      hintStyle: AppStyles.regular13.copyWith(
        color: ColorData.kFontSecondaryColor,
      ),
      borderRadius: BorderRadius.circular(8),
      fillColor: Colors.white,
      textInputType: TextInputType.number,
    );
  }
}
