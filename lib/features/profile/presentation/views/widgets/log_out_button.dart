import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/helper/show_true_snack_bar.dart';
import '../../../../../core/services/service_locator.dart';
import '../../../../auth/domain/repos/auth_repo.dart';
import '../../../../auth/presentation/views/login_view.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Colors.transparent,
              child: Container(
                height: 198,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.close, size: 20),
                    const SizedBox(height: 12),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        'هل ترغب في تسجيل الخروج ؟',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0C0D0D) /* Grayscale-950 */,
                          fontSize: 16,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 29),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            text: "تأكيد",
                            onPressed: () async {
                              await signOut(context);
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: CustomButton(
                            text: "لا ارغب",
                            textStyle: AppStyles.bold16.copyWith(
                              color: ColorData.kPrimaryColor,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: double.infinity,
        height: 41,
        decoration: const ShapeDecoration(
          color: Color(0xFFEBF9F1),
          shape: RoundedRectangleBorder(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                'تسجيل الخروج',
                textAlign: TextAlign.center,
                style: AppStyles.semiBold13.copyWith(
                  color: const Color(0xFF1B5E37) /* Green1-500 */,
                ),
              ),
              Icon(Iconsax.logout_copy, color: ColorData.kPrimaryColor),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signOut(BuildContext context) async {
    await getIt<AuthRepo>().signOut();
    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginView.routeName,
        (route) => false,
      );
      showTrueSnackBar(context, message: "تم تسجيل الخروج");
    }
  }
}
