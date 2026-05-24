import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class PaymentReviewTicket extends StatelessWidget {
  const PaymentReviewTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final orderEntity = context.watch<OrderInputEntity>();
    return Container(
      width: double.infinity,
      height: 128,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: ShapeDecoration(
        color: const Color(0x7FF2F3F3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: AppStyles.regular13.copyWith(
                  color: ColorData.kFontSecondaryColor,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                '${orderEntity.cartEntity.calculateTotalPriceItems()} دينار',
                textAlign: TextAlign.right,
                style: AppStyles.semiBold16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: AppStyles.regular13.copyWith(
                  color: ColorData.kFontSecondaryColor,
                ),
              ),
              const Expanded(child: SizedBox()),
              Text(
                '40 دينار',
                textAlign: TextAlign.right,
                style: AppStyles.semiBold13.copyWith(
                  color: ColorData.kFontSecondaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            width: 274,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFFCACECE) /* Grayscale-200 */,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Text('الكلي', style: AppStyles.bold16),
              const Expanded(child: SizedBox()),
              Text(
                '${orderEntity.cartEntity.calculateTotalPriceItems() + 40} دينار',
                textAlign: TextAlign.right,
                style: AppStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
