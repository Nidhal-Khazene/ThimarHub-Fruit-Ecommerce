import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_small_oval_container.dart';

class NotReadNotificationsItem extends StatelessWidget {
  const NotReadNotificationsItem({super.key, required this.image});
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ListTile(
          tileColor: const Color(0xffF5FCF8),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: SizedBox(
              width: 219,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'خصم ',
                      style: AppStyles.semiBold13.copyWith(
                        color: const Color(0xFF313131),
                      ),
                    ),
                    TextSpan(
                      text: '50%',
                      style: AppStyles.semiBold16.copyWith(
                        color: const Color(0xFFEB5757),
                      ),
                    ),
                    TextSpan(
                      text: ' علي اسعار الفواكه بمناسبه العيد',
                      style: AppStyles.semiBold13.copyWith(
                        color: const Color(0xFF313131),
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              '9 صباحا',
              style: AppStyles.regular13.copyWith(
                color: const Color(0xFF949D9E) /* Grayscale-400 */,
              ),
            ),
          ),
          leading: CustomSmallOvalContainer(
            width: 59,
            height: 59,
            padding: EdgeInsets.zero,
            widget: image,
          ),
        ),
        Positioned(
          right: 25,
          top: -2.5,
          child: Container(
            width: 8,
            height: 8,
            decoration: const ShapeDecoration(
              color: const Color(0xFF1B5E37) /* Green1-500 */,
              shape: OvalBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
