import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/cart/presentation/manager/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/presentation/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_cart_view_price_button.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key, required this.cartItems});

  final List<CartItemEntity> cartItems;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Center(
                child: Container(
                  height: 41,
                  width: double.infinity,
                  color: const Color(0xFFEBF9F1),
                  child: Center(
                    child: Text(
                      "لديك ${context.watch<CartCubit>().cartEntity.cartItemsEntities.length} منتجات في سله التسوق",
                      textAlign: TextAlign.center,
                      style: AppStyles.regular13.copyWith(
                        color: ColorData.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                children: List.generate(
                  cartItems.length,
                  (index) => CartItem(cartItemEntity: cartItems[index]),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          top: MediaQuery.sizeOf(context).height * .7,
          child: const CustomCartViewPriceButton(),
        ),
      ],
    );
  }
}
