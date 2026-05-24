import 'dart:developer';

import 'package:ecommerce_app/core/helper/show_false_snack_bar.dart';
import 'package:ecommerce_app/core/utils/app_keys.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/paypal_payment_entity/paypal_payment_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_success_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../checkout_view.dart';

class CheckoutButton extends StatefulWidget {
  const CheckoutButton({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  static const List<String> titles = [
    "التالي",
    "التالي",
    "تأكيد & استمرار",
    "تأكيد الطلب",
  ];

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  int pageNumber = 0;
  late AddressStepScope addressStepScope;
  late PaymentsStepScope paymentsStepScope;

  @override
  void initState() {
    super.initState();

    widget._pageController.addListener(() {
      final int newPage = widget._pageController.page?.round() ?? 0;

      if (newPage != pageNumber) {
        setState(() {
          pageNumber = newPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    addressStepScope = context.read<AddressStepScope>();
    paymentsStepScope = context.read<PaymentsStepScope>();
    return CustomButton(
      onPressed: () {
        if (pageNumber == 0) {
          _handleShippingSection(context);
        } else if (pageNumber == 1) {
          _handleAddressSection();
        } else if (pageNumber == 2) {
          _handlePaymentSection();
        } else {
          var orderEntity = context.read<OrderInputEntity>();
          var addOrderCubit = context.read<AddOrderCubit>();
          addOrderCubit.addOrder(orderEntity);
          Navigator.pushNamed(context, PaymentSuccessView.routeName);

          // _handleProcessPayment(context);
        }
      },
      text: CheckoutButton
          .titles[pageNumber.clamp(0, CheckoutButton.titles.length - 1)],
      textStyle: AppStyles.bold16.copyWith(color: Colors.white),
    );
  }

  void _handleShippingSection(BuildContext context) {
    if (context.read<OrderInputEntity>().payWithCash != null) {
      widget._pageController.animateToPage(
        pageNumber + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      showFalseSnackBar(context, errorMessage: "اختر طريقة الدفع ");
    }
  }

  void _handleAddressSection() {
    if (addressStepScope.key.currentState!.validate()) {
      addressStepScope.key.currentState!.save();
      widget._pageController.animateToPage(
        pageNumber + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      addressStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }

  void _handlePaymentSection() {
    if (paymentsStepScope.key.currentState!.validate()) {
      paymentsStepScope.key.currentState!.save();
      widget._pageController.animateToPage(
        pageNumber + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    } else {
      paymentsStepScope.autovalidateMode = AutovalidateMode.always;
    }
  }

  void _handleProcessPayment(BuildContext context) {
    var orderEntity = context.read<OrderInputEntity>();
    PaypalPaymentEntity paypalPaymentEntity = PaypalPaymentEntity.fromEntity(
      orderEntity,
    );
    var addOrderCubit = context.read<AddOrderCubit>();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: kPayPalClientID,
          secretKey: kPayPalSecretKey,
          transactions: [paypalPaymentEntity.toJson()],
          note: "Contact us for any questions on your order.",
          onSuccess: (Map params) async {
            Navigator.pushNamed(context, PaymentSuccessView.routeName);
            addOrderCubit.addOrder(orderEntity);
            log("onSuccess: $params");
          },
          onError: (error) {
            Navigator.pop(context);
            showFalseSnackBar(context, errorMessage: "فشلت عملية الدفع");
            log("onError: $error");
          },
          onCancel: () {
            log('cancelled:');
          },
        ),
      ),
    );
  }
}
