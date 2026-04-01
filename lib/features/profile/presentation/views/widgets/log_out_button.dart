import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
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
      onTap: () async {
        await getIt<AuthRepo>().signOut();
        if (context.mounted) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            LoginView.routeName,
            (route) => false,
          );
          showTrueSnackBar(context, message: "تم تسجيل الخروج");
        }
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
}
