import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';

class RatingSummaryArabicLayout extends StatelessWidget {
  const RatingSummaryArabicLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..scale(-1.0, 1.0),
      child: RatingSummary(
        key: UniqueKey(),
        counter: 5,
        showAverage: false,
        color: const Color(0xFFFFB400),
        thickness: 8,
        counterFiveStars: 5,
        counterFourStars: 4,
        counterThreeStars: 3,
        counterTwoStars: 2,
        counterOneStars: 1,
        labelCounterFiveStars: buildLabelStar(count: 5),
        labelCounterFourStars: buildLabelStar(count: 4),
        labelCounterThreeStars: buildLabelStar(count: 3),
        labelCounterTwoStars: buildLabelStar(count: 2),
        labelCounterOneStars: buildLabelStar(count: 1),
      ),
    );
  }

  Transform buildLabelStar({required int count}) => Transform(
    alignment: Alignment.center,
    transform: Matrix4.identity()..scale(-1.0, 1.0),
    child: Text(
      "$count",
      style: AppStyles.semiBold13.copyWith(color: const Color(0xFF0C0D0D)),
    ),
  );
}
