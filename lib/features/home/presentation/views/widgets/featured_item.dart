import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        child: SizedBox(
          height: 200,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  Assets.assetsImagesFeaturedImage1,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 24,
                top: 35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "عروض العيد",
                      style: AppStyles.regular13.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "خصم 25%",
                      style: AppStyles.bold19.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 7),
                    CustomButton(
                      borderColor: Colors.transparent,
                      borderRadiusValue: 4,
                      width: 116,
                      height: 34,
                      text: "تسوق الان",
                      textStyle: AppStyles.bold13.copyWith(
                        color: ColorData.kPrimaryColor,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
