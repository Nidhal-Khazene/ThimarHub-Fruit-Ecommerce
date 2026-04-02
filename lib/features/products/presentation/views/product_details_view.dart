import 'package:ecommerce_app/features/products/presentation/views/widgets/product_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/entities/product_entity.dart';
import '../../../cart/presentation/manager/cubits/cart_item_cubit/cart_item_cubit.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.productEntity});

  static const routeName = "ProductDetailsView";
  final ProductEntity productEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => CartItemCubit(),
        child: ProductDetailsViewBody(productEntity: productEntity),
      ),
    );
  }
}
