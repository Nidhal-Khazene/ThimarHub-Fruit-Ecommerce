import 'package:ecommerce_app/features/profile/presentation/views/widgets/my_orders_view_item_details.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../checkout/presentation/views/widgets/order_tracking_item.dart';

class MyOrdersViewItem extends StatefulWidget {
  const MyOrdersViewItem({super.key});

  @override
  State<MyOrdersViewItem> createState() => _MyOrdersViewItemState();
}

class _MyOrdersViewItemState extends State<MyOrdersViewItem> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.bounceInOut,
      padding: const EdgeInsets.only(top: 19),
      decoration: const BoxDecoration(color: Color(0x7FF2F3F3)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                              const TextSpan(
                                text: ' : ',
                                style: AppStyles.regular11,
                              ),
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
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: const Icon(Iconsax.arrow_down_1_copy),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Visibility(
            visible: isVisible,
            child: const MyOrdersViewItemDetails(),
          ),
        ],
      ),
    );
  }
}
