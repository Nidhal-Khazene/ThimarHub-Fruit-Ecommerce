import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/code_verification_view_body.dart';
import 'package:flutter/material.dart';

class CodeVerificationView extends StatelessWidget {
  const CodeVerificationView({super.key});

  static const routeName = "CodeVerificationView";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: CodeVerificationViewBody(),
        ),
      ),
    );
  }
}
