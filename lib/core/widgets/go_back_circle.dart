import 'package:flutter/material.dart';

class GoBackCircle extends StatelessWidget {
  const GoBackCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 44,
        height: 44,
        padding: const EdgeInsets.all(11),
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: OvalBorder(),
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 22,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
