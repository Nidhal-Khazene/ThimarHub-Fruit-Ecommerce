import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/products_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../core/repos/products_repo/products_repo.dart';
import '../../../../core/services/service_locator.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  static const routeName = "ProductsView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: BlocProvider(
            create: (context) => ProductsCubit(getIt<ProductsRepo>()),
            child: const ProductsViewBody(),
          ),
        ),
      ),
    );
  }
}
