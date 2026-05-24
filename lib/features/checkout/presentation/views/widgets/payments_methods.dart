import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class PaymentsMethods extends StatefulWidget {
  const PaymentsMethods({super.key, required this.onTap});

  final ValueChanged<bool> onTap;
  static const List<String> payments = [
    Assets.assetsImagesPaymentsApplePay,
    Assets.assetsImagesPaymentsPaypal,
    Assets.assetsImagesPaymentsMastercard,
    Assets.assetsImagesPaymentsVisa,
  ];

  @override
  State<PaymentsMethods> createState() => _PaymentsMethodsState();
}

class _PaymentsMethodsState extends State<PaymentsMethods> {
  int selectedItem = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        spacing: 16,
        children: List.generate(PaymentsMethods.payments.length, (index) {
          if (index != 3) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = index;
                    widget.onTap(selectedItem != 1);
                  });
                },
                child: PaymentItem(
                  paymentMethod: PaymentsMethods.payments[index],
                  isActive: selectedItem == index,
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem = index;
                  });
                },
                child: PaymentItem(
                  paymentMethod: PaymentsMethods.payments[index],
                  backgroundColor: const Color(0xff1434CB),
                  isActive: selectedItem == index,
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
