import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({
    super.key,
    this.onPressed,
    required this.title,
    required this.socialIcon,
  });

  final void Function()? onPressed;
  final String title;
  final String socialIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
          ),
          title: Text(
            title,
            style: AppStyles.semiBold16,
            textAlign: TextAlign.center,
          ),
          titleAlignment: ListTileTitleAlignment.center,
          leading: SvgPicture.asset(socialIcon),
        ),
      ),
    );
  }
}
