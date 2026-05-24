import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/about_us_text_content.dart';
import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  static const routeName = "AboutUsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "من نحن"),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: AboutUsTextContent(),
        ),
      ),
    );
  }
}
