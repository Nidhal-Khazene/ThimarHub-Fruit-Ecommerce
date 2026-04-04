import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_small_oval_container.dart';
import 'package:ecommerce_app/features/notifications/presentation/views/widgets/NotReadNotificationItem.dart';
import 'package:ecommerce_app/features/notifications/presentation/views/widgets/read_notification_item.dart';
import 'package:flutter/material.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Row(
              children: [
                Text(
                  'جديد',
                  textAlign: TextAlign.right,
                  style: AppStyles.bold16.copyWith(
                    color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                  ),
                ),
                const SizedBox(width: 6),
                CustomSmallOvalContainer(
                  padding: EdgeInsets.zero,
                  width: 22,
                  height: 22,
                  widget: Center(
                    child: Text(
                      '2',
                      style: AppStyles.bold13.copyWith(
                        color: ColorData.kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'تحديد الكل مقروء',
                  textAlign: TextAlign.center,
                  style: AppStyles.regular13.copyWith(
                    color: const Color(0xFF949D9E) /* Grayscale-400 */,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const ReadNotificationsItem(),
          const SizedBox(height: 8),
          NotReadNotificationsItem(
            image: Image.asset(
              width: 59,
              height: 59,
              Assets.assetsImagesNotificationDiscount,
            ),
          ),
        ],
      ),
    );
  }
}
