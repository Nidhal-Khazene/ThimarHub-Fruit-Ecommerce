import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 89,
          width: 73,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: Container(
                  width: 73,
                  height: 73,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.assetsImagesProfileImageView),
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: (73 / 3) - 3,
                bottom: -10,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: const ShapeDecoration(
                    color: Color(0xffF9F9F9),
                    shape: OvalBorder(
                      side: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                  child: Icon(
                    size: 20,
                    Iconsax.camera_copy,
                    color: ColorData.kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أحمد ياسر',
              style: AppStyles.bold13.copyWith(color: const Color(0xFF131F46)),
            ),
            Text(
              'mail@mail.com',
              style: AppStyles.regular13.copyWith(
                color: const Color(0xFF888FA0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
