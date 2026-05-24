import 'package:ecommerce_app/core/helper/show_true_snack_bar.dart';
import 'package:ecommerce_app/features/cart/presentation/manager/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/presentation/views/cart_view.dart';
import 'package:ecommerce_app/features/home/presentation/views/home_view.dart';
import 'package:ecommerce_app/features/products/presentation/views/products_view.dart';
import 'package:ecommerce_app/features/profile/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarBody extends StatelessWidget {
  const BottomNavigationBarBody({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartAdded) {
          showTrueSnackBar(context, message: "تمت الإضافة الى السلة");
        }
        if (state is CartRemoved) {
          showTrueSnackBar(context, message: "تم الحذف من السلة");
        }
      },
      child: IndexedStack(
        index: selectedIndex,
        children: const [HomeView(), ProductsView(), CartView(), ProfileView()],
      ),
    );
  }
}
