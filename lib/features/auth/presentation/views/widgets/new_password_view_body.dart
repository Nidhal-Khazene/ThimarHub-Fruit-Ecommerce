import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:flutter/material.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
              textAlign: TextAlign.right,
              style: AppStyles.semiBold16.copyWith(
                color: const Color(0xFF0C0D0D),
              ),
            ),
          ),
          const SizedBox(height: 34),
          const PasswordField(hintText: "كلمة المرور الجديدة"),
          const SizedBox(height: 24),
          const PasswordField(hintText: "تأكيد كلمة المرور الجديدة"),
          const SizedBox(height: 24),
          CustomButton(
            text: "إنشاء كلمة مرور جديدة",
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Container(
                      height: 198,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            Assets.assetsImagesSuccessImage,
                            width: 154,
                            height: 107,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'تم تغيير الباسورد بنجاح',
                            textAlign: TextAlign.center,
                            style: AppStyles.bold16.copyWith(
                              color: const Color(0xFF0C0D0D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
