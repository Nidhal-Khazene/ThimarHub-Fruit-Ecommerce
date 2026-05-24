import 'package:flutter/material.dart';

class OrderTrackVerticalLine extends StatelessWidget {
  const OrderTrackVerticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: SizedBox(
            width: 10,
            height: 142,
            child: Stack(
              children: [
                Positioned(
                  left: 5,
                  top: 6,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(1.57),
                    width: 65,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF28B446),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 80,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(1.57),
                    width: 57,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFF4F5F9),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF1B5E37),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 33,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF1B5E37),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 66,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const ShapeDecoration(
                      color: Color(0xFF1B5E37),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 99,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFEBEBEB),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 132,
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFEBEBEB),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
