import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/order_tracking_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TrackOrderHeader extends StatelessWidget {
  const TrackOrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 19),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(color: Color(0x7FF2F3F3)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OrderTrackingItem(image: Assets.assetsImagesOrderNumber),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('طلب رقم: 1234567#', style: AppStyles.bold13),
              Text(
                'تم الطلب :22 مارس ,2024',
                style: AppStyles.regular11.copyWith(
                  color: const Color(0xFF949D9E),
                ),
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'عدد الطلبات',
                          style: AppStyles.regular13.copyWith(
                            color: const Color(0xFF949D9E),
                          ),
                        ),
                        const TextSpan(text: ' : ', style: AppStyles.regular11),
                        TextSpan(
                          text: '10',
                          style: AppStyles.bold13.copyWith(
                            color: const Color(0xFF0C0D0D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    '250 جنية',
                    style: AppStyles.bold13.copyWith(
                      color: const Color(0xFF0C0D0D),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
