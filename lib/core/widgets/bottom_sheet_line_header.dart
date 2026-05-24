import 'package:flutter/material.dart';

class BottomSheetLineHeader extends StatelessWidget {
  const BottomSheetLineHeader({
    super.key,
    required this.lineColor,
    this.width,
    this.height,
  });
  final Color? lineColor;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 24,
      height: height ?? 4,
      decoration: ShapeDecoration(
        color: lineColor ?? const Color(0xFFE8ECFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      ),
    );
  }
}
