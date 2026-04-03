import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/rating_summary_arabic_layout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            hintText: "اكتب التعليق..",
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  Assets.assetsImagesPersonsPerson0,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(10),
            borderColor: const Color(0xffEEEEEE),
            hintStyle: AppStyles.regular13.copyWith(
              color: const Color(0xFF111719),
            ),
            fillColor: Colors.transparent,
          ),
          const SizedBox(height: 16),
          Text(
            '324 مراجعه',
            style: AppStyles.bold13.copyWith(color: const Color(0xFF0C0D0D)),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: double.infinity,
            child: Text(
              'الملخص',
              textAlign: TextAlign.center,
              style: AppStyles.semiBold16.copyWith(
                color: const Color(0xFF0C0D0D),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
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
          ),
        ],
      ),
    );
  }
}
