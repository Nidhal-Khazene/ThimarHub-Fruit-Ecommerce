import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ActiveBottomNavBarItem extends StatelessWidget {
  const ActiveBottomNavBarItem({
    super.key,
    required this.activeIcon,
    required this.title,
  });
  final IconData activeIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
        padding: const EdgeInsets.only(left: 16),
        curve: Curves.ease,
        duration: const Duration(milliseconds: 500),
        height: 32,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: ColorData.kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(
                child: Icon(activeIcon, color: Colors.white, size: 16),
              ),
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: AppStyles.semiBold11.copyWith(
                color: ColorData.kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
