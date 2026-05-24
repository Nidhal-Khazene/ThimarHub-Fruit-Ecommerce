import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class ReviewPaymentVerifiedTicket extends StatelessWidget {
  const ReviewPaymentVerifiedTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 81,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0x7FF2F3F3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text('وسيلة الدفع', style: AppStyles.bold13),
              const Expanded(child: SizedBox()),
              Row(
                children: [
                  Icon(
                    Iconsax.edit_2_copy,
                    size: 16,
                    color: ColorData.kFontSecondaryColor,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'تعديل',
                    style: AppStyles.semiBold13.copyWith(
                      color: ColorData.kFontSecondaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                context.read<OrderInputEntity>().paymentCardEntity.cardNumber ??
                    "",
                style: AppStyles.regular16.copyWith(
                  color: ColorData.kFontMediumColor,
                ),
              ),
              const SizedBox(width: 29),
              const PaymentItem(
                height: 34,
                paymentMethod: Assets.assetsImagesPaymentsPaypal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
