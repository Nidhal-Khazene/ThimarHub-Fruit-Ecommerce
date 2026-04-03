import 'package:ecommerce_app/features/products/presentation/views/widgets/rating_summary_arabic_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';

class RatingAndReviewSummarySection extends StatelessWidget {
  const RatingAndReviewSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  '4.5',
                  style: AppStyles.bold13.copyWith(
                    color: const Color(0xFF0C0D0D),
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: ColorData.kSecondaryColor,
                  size: 16,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              '88%',
              style: AppStyles.regular16.copyWith(
                color: const Color(0xFF0C0D0D),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'موصي بها',
              style: AppStyles.regular13.copyWith(
                color: const Color(0xFF0C0D0D),
              ),
            ),
          ],
        ),
        const SizedBox(width: 22),
        Flexible(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.75,
            child: const RatingSummaryArabicLayout(),
          ),
        ),
      ],
    );
  }
}
