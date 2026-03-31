import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/forget_password_view_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  static const routeName = "ForgetPasswordView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "نسيان كلمة المرور"),
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: ForgetPasswordViewBody(),
        ),
      ),
    );
  }
}
