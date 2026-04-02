import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/review_view_body.dart';
import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});
  static const routeName = "ReviewView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "المراجعه"),
      body: const SafeArea(
        child: Padding(padding: kPrimaryScreenPadding, child: ReviewViewBody()),
      ),
    );
  }
}
