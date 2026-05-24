import 'package:ecommerce_app/features/checkout/presentation/views/widgets/step_item.dart';
import 'package:flutter/material.dart';

class CustomCheckoutStepsHeader extends StatelessWidget {
  const CustomCheckoutStepsHeader({
    super.key,
    required this.currentIndexPage,
    required this.pageController,
    required this.onTap,
  });

  final int currentIndexPage;
  final PageController pageController;
  final ValueChanged<int> onTap;

  static const List<String> textList = [
    "الشحن",
    "العنوان",
    "الدفع",
    "المراجعه",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(textList.length, (index) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              onTap(index);
            },
            child: StepItem(
              isActive: index <= currentIndexPage,
              textContent: textList[index],
              indexValue: (index + 1).toString(),
            ),
          ),
        );
      }),
    );
  }
}
