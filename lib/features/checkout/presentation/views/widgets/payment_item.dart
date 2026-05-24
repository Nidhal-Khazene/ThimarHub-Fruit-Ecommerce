import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.paymentMethod,
    this.backgroundColor,
    this.height,
    this.isActive,
  });

  final String paymentMethod;
  final Color? backgroundColor;
  final double? height;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      curve: Curves.bounceIn,
      height: height ?? 43,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: backgroundColor ?? Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: isActive ?? false
                ? ColorData.kPrimaryColor
                : const Color(0xFFD6DCE5),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Image.asset(paymentMethod),
    );
  }
}
