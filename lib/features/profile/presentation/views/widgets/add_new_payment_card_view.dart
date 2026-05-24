import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../checkout/presentation/views/widgets/virtual_card_payments_check_box.dart';

class AddNewPaymentCardView extends StatelessWidget {
  const AddNewPaymentCardView({super.key});

  static const routeName = "AddNewPaymentCardView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "اضافه بطاقه جديده"),
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextFormField(hintText: "اسم حامل البطاقه"),
                const SizedBox(height: 8),
                const CustomTextFormField(
                  hintText: "رقم البطاقة",
                  textInputType: TextInputType.number,
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        hintText: "تاريخ الصلاحيه",
                        textInputType: TextInputType.datetime,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: "CVV",
                        textInputType: TextInputType.number,
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
                const SizedBox(height: 230),
                CustomButton(
                  content: Container(
                    decoration: ShapeDecoration(
                      color: ColorData.kPrimaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.add, color: Colors.white),
                        const SizedBox(width: 6.5),
                        Text(
                          'اضافة وسيلة دفع الجديده',
                          textAlign: TextAlign.center,
                          style: AppStyles.bold16.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
