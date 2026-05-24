import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/order_entity.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/payments_methods.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/virtual_card_payments_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import '../checkout_view.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  State<PaymentsView> createState() => _PaymentsViewState();
}

class _PaymentsViewState extends State<PaymentsView>
    with AutomaticKeepAliveClientMixin {
  bool isCardInfoVisible = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final scope = context.read<PaymentsStepScope>();
    return SingleChildScrollView(
      child: Form(
        key: scope.key,
        autovalidateMode: scope.autovalidateMode,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text("أختار طريقه الدفع المناسبه :", style: AppStyles.bold13),
            const SizedBox(height: 13),
            Text(
              "من فضلك اختر طريقه الدفع المناسبه لك.",
              style: AppStyles.regular13.copyWith(
                color: ColorData.kFontSecondaryColor,
              ),
            ),
            const SizedBox(height: 13),
            PaymentsMethods(
              onTap: (bool isVisible) {
                setState(() {
                  isCardInfoVisible = isVisible;
                });
              },
            ),
            const SizedBox(height: 16),
            Visibility(
              visible: isCardInfoVisible,
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: "اسم حامل البطاقه",
                    onSaved: (value) {
                      context.read<OrderInputEntity>().paymentCardEntity.name =
                          value;
                    },
                  ),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hintText: "رقم البطاقة",
                    textInputType: TextInputType.number,
                    onSaved: (value) {
                      context
                          .read<OrderInputEntity>()
                          .paymentCardEntity
                          .cardNumber = value
                          .toString();
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "تاريخ الصلاحيه",
                          textInputType: TextInputType.datetime,
                          onSaved: (value) {
                            context
                                .read<OrderInputEntity>()
                                .paymentCardEntity
                                .expirationCard = value
                                .toString();
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "CVV",
                          textInputType: TextInputType.number,
                          onSaved: (value) {
                            context
                                .read<OrderInputEntity>()
                                .paymentCardEntity
                                .cvv = value
                                .toString();
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Row(
                    children: [
                      const VirtualCardPaymentsCheckBox(),
                      const SizedBox(width: 16),
                      Text(
                        "جعل البطاقة افتراضية",
                        style: AppStyles.semiBold13.copyWith(
                          color: ColorData.kFontSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
