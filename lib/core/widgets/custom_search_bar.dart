import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIcon,
    this.prefixIconColor,
    this.fillColor,
    this.borderWidth,
    this.onTap,
    this.enabled,
    this.borderColor,
  });
  final String hintText;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Color? fillColor;
  final double? borderWidth;
  final void Function()? onTap;
  final bool? enabled;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? const Color(0xffF9FAFA),
        border: buildOutlineInputBorder(),
        hint: Text(
          hintText,
          style: AppStyles.bold13.copyWith(color: const Color(0xFF949D9E)),
        ),
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: GestureDetector(onTap: onTap, child: suffixIcon),
        suffixIconColor: suffixIconColor ?? const Color(0xFFC9CECE),
        enabledBorder: buildOutlineInputBorder(borderWidth, borderColor),
        focusedBorder: buildOutlineInputBorder(borderWidth, borderColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([
    double? borderWidth,
    Color? borderColor,
  ]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        width: borderWidth ?? 1,
        color: borderColor ?? const Color(0xFFE6E9E9),
      ),
    );
  }
}
