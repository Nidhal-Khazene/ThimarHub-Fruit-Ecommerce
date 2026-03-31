import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const routeName = "ForgetPasswordView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "نسيان كلمة المرور",
        isNotificationIconShow: false,
      ),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: ForgetPasswordViewBody(),
        ),
      ),
    );
  }
}
