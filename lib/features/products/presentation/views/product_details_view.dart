import 'package:ecommerce_app/features/products/presentation/views/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});
  static const routeName = "ProductDetailsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: ProductDetailsViewBody(),
        ),
      ),
    );
  }
}
