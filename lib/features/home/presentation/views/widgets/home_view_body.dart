import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_search.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/featured_section.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/products_grid_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_header.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHomeAppBar()),
        SliverToBoxAdapter(child: CustomHomeSearch(enabled: false)),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: FeaturedSection()),
        SliverToBoxAdapter(child: BestSellerHeader()),
        SliverToBoxAdapter(child: SizedBox(height: 12)),
        ProductsGridViewBlocBuilder(),
      ],
    );
  }
}
