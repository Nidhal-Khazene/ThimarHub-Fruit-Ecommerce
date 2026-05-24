import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_address_ticket.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payment_review_ticket.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/review_payment_verified_ticket.dart';
import 'package:flutter/material.dart';

class PaymentReviewView extends StatelessWidget {
  const PaymentReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24),
          Text('ملخص الطلب :', style: AppStyles.bold13),
          SizedBox(height: 8),
          PaymentReviewTicket(),
          SizedBox(height: 16),
          Text('يرجي تأكيد  طلبك', style: AppStyles.bold13),
          SizedBox(height: 8),
          ReviewPaymentVerifiedTicket(),
          SizedBox(height: 8),
          PaymentAddressTicket(),
        ],
      ),
    );
  }
}
