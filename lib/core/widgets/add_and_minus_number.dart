import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../features/cart/presentation/manager/cubits/cart_item_cubit/cart_item_cubit.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

class AddAndMinusNumber extends StatefulWidget {
  const AddAndMinusNumber({
    super.key,
    required this.cartItemEntity,
    this.circleRadius,
    this.iconSize,
  });
  final CartItemEntity cartItemEntity;
  final double? circleRadius;
  final double? iconSize;

  @override
  State<AddAndMinusNumber> createState() => _AddAndMinusNumberState();
}

class _AddAndMinusNumberState extends State<AddAndMinusNumber> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              widget.cartItemEntity.increaseQuantity();
            });
            context.read<CartItemCubit>().updateCartItem(widget.cartItemEntity);
          },
          child: CircleAvatar(
            radius: widget.circleRadius ?? 12,
            backgroundColor: ColorData.kPrimaryColor,
            child: Icon(
              Iconsax.add_copy,
              color: Colors.white,
              size: widget.iconSize ?? 20,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Text(
          widget.cartItemEntity.quantity.toString(),
          style: AppStyles.bold16,
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.cartItemEntity.decreaseQuantity();
            });
            context.read<CartItemCubit>().updateCartItem(widget.cartItemEntity);
          },
          child: CircleAvatar(
            radius: widget.circleRadius ?? 12,
            backgroundColor: const Color(0xFFF1F1F5),
            child: Icon(
              Iconsax.minus_copy,
              color: const Color(0xFF969899),
              size: widget.iconSize ?? 20,
            ),
          ),
        ),
      ],
    );
  }
}
