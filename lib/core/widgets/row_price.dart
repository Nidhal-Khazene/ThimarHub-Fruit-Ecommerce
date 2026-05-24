import 'package:ecommerce_app/core/widgets/price_container.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class RowPrice extends StatelessWidget {
  const RowPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: PriceContainer()),
        SizedBox(width: 14),
        Text("الي", style: AppStyles.bold13),
        SizedBox(width: 14),
        Expanded(child: PriceContainer()),
      ],
    );
  }
}
