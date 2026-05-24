import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_image_network.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:ecommerce_app/features/cart/presentation/manager/cubits/cart_cubit/cart_cubit.dart';
import 'package:ecommerce_app/features/cart/presentation/manager/cubits/cart_item_cubit/cart_item_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/widgets/add_and_minus_number.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartItemEntity});

  final CartItemEntity cartItemEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartItemCubit, CartItemState>(
      buildWhen: (prev, current) {
        if (current is CartItemUpdated) {
          if (current.cartItemEntity == cartItemEntity) {
            return true;
          }
        }
        return false;
      },
      builder: (context, state) => Container(
        width: double.infinity,
        height: 95,
        padding: const EdgeInsets.only(
          top: 1,
          bottom: 3,
          right: 16.5,
          left: 17.5,
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: ColorData.kBorderColor, width: 1),
            bottom: BorderSide(color: ColorData.kBorderColor, width: 1),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 73,
              height: 92,
              decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 26,
                  horizontal: 10,
                ),
                child: CustomImageNetwork(
                  urlImage: cartItemEntity.productEntity.urlImage!,
                ),
              ),
            ),
            const SizedBox(width: 17),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItemEntity.productEntity.productName,
                  style: AppStyles.bold13,
                ),
                const SizedBox(height: 4),
                Text(
                  "${cartItemEntity.calculateTotalWeight()} كم",
                  style: AppStyles.regular13.copyWith(
                    color: ColorData.kLightSecondaryColor,
                  ),
                ),
                const SizedBox(height: 12),
                AddAndMinusNumber(cartItemEntity: cartItemEntity),
              ],
            ),
            const Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    context.read<CartCubit>().removeCartItemEntity(
                      cartItemEntity,
                    );
                  },
                  child: const Icon(
                    Iconsax.trash_copy,
                    color: Color(0xFF949D9E),
                    size: 20,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "${cartItemEntity.calculateTotalPrice()} دينار",
                  style: AppStyles.bold16.copyWith(
                    color: ColorData.kSecondaryColor,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
