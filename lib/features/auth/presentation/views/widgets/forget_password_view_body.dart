import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
            textAlign: TextAlign.right,
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          SizedBox(height: 31),
          CustomTextFormField(hintText: "رقم الهاتف"),
          SizedBox(height: 30),
          CustomButton(text: "نسيت كلمة المرور"),
        ],
      ),
    );
  }
}
