import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/utils/styles.dart';

class PersonalProfileView extends StatelessWidget {
  const PersonalProfileView({super.key});

  static const routeName = "PersonalProfileView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "الملف الشخصي"),
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'المعلومات الشخصيه',
                  style: AppStyles.semiBold13.copyWith(
                    color: const Color(0xFF0C0D0D),
                  ),
                ),
                const SizedBox(height: 8),
                const CustomTextFormField(
                  hintText: "أحمد ياسر",
                  suffixIcon: Icon(
                    Iconsax.edit_2_copy,
                    color: Color(0xFF949D9E),
                    size: 16,
                  ),
                ),
                const SizedBox(height: 8),
                const CustomTextFormField(
                  hintText: "mail@mail.com",
                  suffixIcon: Icon(
                    Iconsax.edit_2_copy,
                    color: Color(0xFF949D9E),
                    size: 16,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'تغيير كلمة المرور',
                  style: AppStyles.semiBold13.copyWith(
                    color: const Color(0xFF0C0D0D),
                  ),
                ),
                const SizedBox(height: 8),
                const CustomTextFormField(
                  hintText: "كلمة المرور الحالي",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Icon(Iconsax.eye, color: Color(0xffC9CECF)),
                  ),
                ),
                const SizedBox(height: 8),
                const CustomTextFormField(
                  hintText: "كلمة المرور الجديده",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Icon(Iconsax.eye, color: Color(0xffC9CECF)),
                  ),
                ),
                const SizedBox(height: 8),
                const CustomTextFormField(
                  hintText: "تأكيد كلمة المرور الجديده",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(left: 33),
                    child: Icon(Iconsax.eye, color: Color(0xffC9CECF)),
                  ),
                ),
                const SizedBox(height: 74),
                const CustomButton(text: "حفظ التغييرات"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
