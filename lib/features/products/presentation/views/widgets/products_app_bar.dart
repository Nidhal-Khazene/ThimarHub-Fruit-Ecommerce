import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/notification_container.dart';

class ProductsAppBar extends StatelessWidget {
  const ProductsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: SizedBox(
            width:
                (MediaQuery.sizeOf(context).width / (kHorizontalPadding / 2)) -
                kHorizontalPadding * 2,
          ),
        ),
        Text("المنتجات", style: AppStyles.bold19),
        NotificationContainer(),
      ],
    );
  }
}
