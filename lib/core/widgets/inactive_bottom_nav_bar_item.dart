import 'package:flutter/material.dart';

class InactiveBottomNavBarItem extends StatelessWidget {
  const InactiveBottomNavBarItem({super.key, required this.inActiveIcon});

  final IconData inActiveIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Icon(inActiveIcon, size: 16),
    );
  }
}
