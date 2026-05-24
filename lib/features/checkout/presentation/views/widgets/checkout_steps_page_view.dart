import 'package:ecommerce_app/features/checkout/presentation/views/widgets/address_view.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_review_view.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payments_view.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/shipping_view.dart';
import 'package:flutter/material.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  List<Widget> get pages => [
    const ShippingView(),
    const AddressView(),
    const PaymentsView(),
    const PaymentReviewView(),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: pages.length,
      itemBuilder: (context, index) {
        return pages[index];
      },
    );
  }
}
