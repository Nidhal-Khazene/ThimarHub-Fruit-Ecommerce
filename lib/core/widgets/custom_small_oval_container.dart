import 'package:flutter/material.dart';

class CustomSmallOvalContainer extends StatelessWidget {
  const CustomSmallOvalContainer({
    super.key,
    required this.widget,
    this.width,
    this.height,
    this.padding,
  });
  final Widget widget;
  final double? width;
  final double? height;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 64,
      height: height ?? 64,
      padding: padding ?? const EdgeInsets.all(8),
      decoration: const ShapeDecoration(
        color: Color(0xFFF3F5F7),
        shape: OvalBorder(),
      ),
      child: widget,
    );
  }
}
