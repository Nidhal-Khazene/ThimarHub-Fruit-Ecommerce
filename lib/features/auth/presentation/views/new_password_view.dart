import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/new_password_view_body.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});
  static const routeName = "NewPasswordView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "كلمة مرور جديدة",
        isNotificationIconShow: false,
      ),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: NewPasswordViewBody(),
        ),
      ),
    );
  }
}
