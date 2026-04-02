import 'package:ecommerce_app/features/products/presentation/views/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/entities/product_entity.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productEntity});
  static const routeName = "ProductDetailsView";
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductDetailsViewBody(productEntity: productEntity));
  }
}
