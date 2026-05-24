import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CircleCheckBox extends StatelessWidget {
  const CircleCheckBox({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: ShapeDecoration(
        color: isActive ? ColorData.kPrimaryColor : null,
        shape: OvalBorder(
          side: BorderSide(
            width: 1,
            color: isActive ? ColorData.kPrimaryColor : const Color(0xFF949D9E),
          ),
        ),
      ),
      child: isActive
          ? const Center(
              child: Icon(Icons.check, color: Colors.white, size: 15),
            )
          : null,
    );
  }
}
