import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (bool value) {
            isTermsAccepted = value;
            widget.onChanged(isTermsAccepted);
            setState(() {});
          },
        ),
        const SizedBox(width: kSizedBoxHeight16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "من خلال إنشاء حساب ، فإنك توافق على ",
                  style: AppStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: "الشروط والأحكام الخاصة بنا",
                  style: AppStyles.semiBold13.copyWith(
                    color: ColorData.kLightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
