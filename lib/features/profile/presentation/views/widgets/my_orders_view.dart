import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/my_orders_view_item.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  static const routeName = "MyOrdersView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "طلباتي"),
      body: const SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyOrdersViewItem(),
                SizedBox(height: 8),
                MyOrdersViewItem(),
                SizedBox(height: 8),
                MyOrdersViewItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
