import 'package:ecommerce_app/core/helper/show_false_snack_bar.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/checkout_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/cubits/cart_cubit/cart_cubit.dart';
import '../../manager/cubits/cart_item_cubit/cart_item_cubit.dart';

class CustomCartViewPriceButton extends StatelessWidget {
  const CustomCartViewPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      builder: (context, state) => CustomButton(
        onPressed: () {
          if (context
              .read<CartCubit>()
              .cartEntity
              .cartItemsEntities
              .isNotEmpty) {
            Navigator.pushNamed(
              context,
              CheckoutView.routeName,
              arguments: context.read<CartCubit>().cartEntity,
            );
          } else {
            showFalseSnackBar(context, errorMessage: "السلة فارغة");
          }
        },
        text:
            "الدفع  ${context.watch<CartCubit>().cartEntity.calculateTotalPriceItems()}  دينار",
        textStyle: AppStyles.bold16.copyWith(color: Colors.white),
      ),
    );
  }
}
