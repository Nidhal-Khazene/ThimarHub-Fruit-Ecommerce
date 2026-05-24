import 'package:ecommerce_app/core/models/our_products_row_model.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_small_oval_container.dart';
import 'package:flutter/material.dart';

class OurProductRowItem extends StatelessWidget {
  const OurProductRowItem({super.key, required this.productItem});

  final OurProductsRowModel productItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSmallOvalContainer(widget: Image.asset(productItem.productImage)),
        const SizedBox(height: 2),
        Text(productItem.productName, style: AppStyles.semiBold13),
      ],
    );
  }
}
