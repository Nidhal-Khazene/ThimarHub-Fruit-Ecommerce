import 'package:ecommerce_app/core/cubits/products_cubit/products_cubit.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/best_seller_header.dart';
import 'package:ecommerce_app/features/home/presentation/views/widgets/products_grid_view_bloc_builder.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/custom_products_header.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/our_products_row.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/products_app_bar.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/products_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsViewBody extends StatefulWidget {
  const ProductsViewBody({super.key});

  @override
  State<ProductsViewBody> createState() => _ProductsViewBodyState();
}

class _ProductsViewBodyState extends State<ProductsViewBody> {
  @override
  void initState() {
    context.read<ProductsCubit>().getBestSellingProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: ProductsAppBar()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: ProductsSearchBar()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: CustomProductsHeader(text: "منتجاتنا")),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(child: OurProductsRow()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: BestSellerHeader()),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        ProductsGridViewBlocBuilder(),
      ],
    );
  }
}
