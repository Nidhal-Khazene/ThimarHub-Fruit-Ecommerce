import 'package:ecommerce_app/core/entities/bottom_nav_bar_entity.dart';
import 'package:ecommerce_app/core/widgets/active_bottom_nav_bar_item.dart';
import 'package:ecommerce_app/core/widgets/inactive_bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.bottomNavBarEntity,
    required this.isSelected,
  });
  final BottomNavBarEntity bottomNavBarEntity;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveBottomNavBarItem(
            activeIcon: bottomNavBarEntity.activeIcon!,
            title: bottomNavBarEntity.iconTitle!,
          )
        : InactiveBottomNavBarItem(
            inActiveIcon: bottomNavBarEntity.inActiveIcon!,
          );
  }
}
