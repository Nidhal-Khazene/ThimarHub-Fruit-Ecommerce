import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AskUserAuth extends StatelessWidget {
  const AskUserAuth({
    super.key,
    required this.questionText,
    required this.doText,
    required this.gestureRecognizer,
  });
  final String questionText;
  final String doText;
  final GestureRecognizer gestureRecognizer;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: questionText,
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          TextSpan(
            recognizer: gestureRecognizer,
            text: doText,
            style: AppStyles.semiBold16.copyWith(
              color: const Color(0xFF1B5E37),
            ),
          ),
        ],
      ),
    );
  }
}
