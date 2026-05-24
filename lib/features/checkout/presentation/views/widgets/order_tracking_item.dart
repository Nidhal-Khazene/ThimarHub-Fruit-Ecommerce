import 'package:flutter/material.dart';

class OrderTrackingItem extends StatelessWidget {
  const OrderTrackingItem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66,
      height: 66,
      padding: const EdgeInsets.all(17),
      decoration: const ShapeDecoration(
        color: Color(0xFFEBF9F1) /* Green1-50 */,
        shape: OvalBorder(),
      ),
      child: Image.asset(image),
    );
  }
}
