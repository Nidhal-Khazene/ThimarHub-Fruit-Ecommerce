import 'package:ecommerce_app/features/checkout/presentation/views/widgets/active_step.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/inactive_step.dart';
import 'package:flutter/material.dart';

class StepItem extends StatelessWidget {
  const StepItem({
    super.key,
    required this.textContent,
    required this.indexValue,
    required this.isActive,
  });

  final String textContent, indexValue;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveStep(textContent: textContent),
      secondChild: InactiveStep(
        indexValue: indexValue,
        textContent: textContent,
      ),
      crossFadeState: isActive
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 100),
    );
  }
}
