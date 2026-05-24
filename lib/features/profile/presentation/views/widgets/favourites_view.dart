import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/cubits/products_cubit/products_cubit.dart';
import '../../../../../core/repos/products_repo/products_repo.dart';
import '../../../../../core/services/service_locator.dart';
import '../../../../home/presentation/views/widgets/products_grid_view_bloc_builder.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({super.key});

  static const String routeName = "FavouritesView";

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(getIt<ProductsRepo>())..getBestSellingProducts(),
      child: Scaffold(
        appBar: buildAppBarWithBackArrow(context, title: "المفضلة"),
        body: const SafeArea(
          child: Padding(
            padding: kPrimaryScreenPadding,
            child: CustomScrollView(slivers: [ProductsGridViewBlocBuilder()]),
          ),
        ),
      ),
    );
  }
}
