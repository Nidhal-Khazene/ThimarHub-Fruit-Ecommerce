import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_small_oval_container.dart';
import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.image,
    required this.date,
    required this.fullName,
  });
  final Widget image;
  final String date, fullName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(fullName, style: AppStyles.semiBold16),
                Text(
                  date,
                  style: AppStyles.regular13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomSmallOvalContainer(
                  padding: EdgeInsets.zero,
                  width: 50,
                  height: 50,
                  widget: image,
                ),
                Positioned(
                  top: 25,
                  right: -5,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      color: const Color(0xFFFFC529),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    height: 20,
                    width: 20,
                    child: Center(
                      child: Text(
                        '5.0',
                        style: AppStyles.semiBold11.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 65,
          child: Text(
            'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها',
            textAlign: TextAlign.right,
            style: AppStyles.regular13.copyWith(color: Color(0xFF949D9E)),
          ),
        ),
      ],
    );
  }
}
