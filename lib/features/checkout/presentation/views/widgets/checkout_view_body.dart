import 'package:ecommerce_app/core/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/custom_checkout_steps_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/helper/show_false_snack_bar.dart';
import '../../../domain/entities/order_entity.dart';
import '../checkout_view.dart';
import 'checkout_button.dart';
import 'checkout_steps_page_view.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  List<String> get pages => ["الشحن", "العنوان", "الدفع", "المراجعه"];

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController _pageController;
  int currentIndexPage = 0;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late AddressStepScope addressStepScope;
  late PaymentsStepScope paymentsStepScope;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentIndexPage = _pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    addressStepScope = context.read<AddressStepScope>();
    paymentsStepScope = context.read<PaymentsStepScope>();
    return Column(
      children: [
        CustomAppBar(title: widget.pages[currentIndexPage]),
        const SizedBox(height: 24),
        CustomCheckoutStepsHeader(
          onTap: (index) {
            if (index == 0) {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            } else if (index == 1) {
              var orderEntity = context.read<OrderInputEntity>();
              if (orderEntity.payWithCash != null) {
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                showFalseSnackBar(
                  context,
                  errorMessage: 'يرجي تحديد طريقه الدفع',
                );
              }
            } else if (index == 2) {
              _handleAddressSection(index);
            } else if (index == 3) {
              _handlePaymentSection(index);
            } else {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            }
          },
          currentIndexPage: currentIndexPage,
          pageController: _pageController,
        ),
        Expanded(child: CheckoutStepsPageView(pageController: _pageController)),
        CheckoutButton(pageController: _pageController),
        const SizedBox(height: 32),
      ],
    );
  }

  void _handleAddressSection(int index) {
    if (addressStepScope.key.currentState!.validate()) {
      addressStepScope.key.currentState!.save();
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      addressStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }

  void _handlePaymentSection(int index) {
    if (paymentsStepScope.key.currentState!.validate()) {
      paymentsStepScope.key.currentState!.save();
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      paymentsStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }
}
