import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/profile/presentation/views/widgets/order_track_vertical_line.dart';
import 'package:flutter/material.dart';

class MyOrdersViewItemDetails extends StatelessWidget {
  const MyOrdersViewItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 0),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: Color(0xffEFEFEF))),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8, right: 9, left: 10, bottom: 1),
              child: OrderTrackVerticalLine(),
            ),
            Container(
              padding: const EdgeInsets.only(top: 4),
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تتبع الطلب',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'قبول الطلب',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'تم شحن الطلب',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'خرج للتوصيل',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E) /* Grayscale-400 */,
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'تم تسليم',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E) /* Grayscale-400 */,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(top: 4),
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '22 مارس , 2024',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '22 مارس , 2024',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    '22 مارس , 2024',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'قيد الانتظار',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    'تم التسليم',
                    style: AppStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
