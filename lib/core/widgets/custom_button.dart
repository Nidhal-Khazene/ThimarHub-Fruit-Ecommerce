import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.text,
    this.backgroundColor,
    this.width,
    this.height,
    this.borderRadiusValue,
    this.textStyle,
    this.content,
    this.borderColor,
  });

  final void Function()? onPressed;
  final String? text;
  final Widget? content;
  final Color? backgroundColor;
  final double? width, height;
  final double? borderRadiusValue;
  final TextStyle? textStyle;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 54,
      child:
          content ??
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor ?? ColorData.kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadiusValue ?? 16),
                side: BorderSide(color: borderColor ?? ColorData.kPrimaryColor),
              ),
            ),
            onPressed: onPressed,
            child: Center(
              child: Text(
                text ?? "Empty text",
                style:
                    textStyle ?? AppStyles.bold16.copyWith(color: Colors.white),
              ),
            ),
          ),
    );
  }
}
