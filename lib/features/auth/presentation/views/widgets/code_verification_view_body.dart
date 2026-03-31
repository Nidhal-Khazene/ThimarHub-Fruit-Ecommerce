import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/otp_fields.dart';
import 'package:flutter/material.dart';

class CodeVerificationViewBody extends StatelessWidget {
  const CodeVerificationViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي   Maxxx@email.com',
            textAlign: TextAlign.right,
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          const SizedBox(height: 29),
          const OtpFields(),
          const SizedBox(height: 29),
          const CustomButton(text: "تحقق من الرمز"),
          const SizedBox(height: 24),
          Text(
            'إعادة إرسال الرمز',
            textAlign: TextAlign.center,
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF2D9F5D),
            ),
          ),
        ],
      ),
    );
  }
}
