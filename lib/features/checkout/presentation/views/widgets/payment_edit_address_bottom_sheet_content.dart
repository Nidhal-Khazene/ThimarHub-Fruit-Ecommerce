import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/widgets/bottom_sheet_line_header.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/styles.dart';
import '../../../domain/entities/order_entity.dart';
import 'edit_address_button.dart';

class PaymentEditAddressBottomSheetContent extends StatefulWidget {
  const PaymentEditAddressBottomSheetContent({super.key});

  @override
  State<PaymentEditAddressBottomSheetContent> createState() =>
      _PaymentEditAddressBottomSheetContentState();
}

class _PaymentEditAddressBottomSheetContentState
    extends State<PaymentEditAddressBottomSheetContent> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 13,
        right: 22,
      ),
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(bottom: 32),
          child: Form(
            key: key,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BottomSheetLineHeader(
                  lineColor: ColorData.kFontSecondaryColor,
                  width: 100,
                  height: 2,
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                            .watch<OrderInputEntity>()
                            .shippingAddressEntity
                            .address =
                        value;
                  },
                  hintText: "العنوان",
                  hintStyle: AppStyles.bold13,
                  textInputType: TextInputType.streetAddress,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                            .watch<OrderInputEntity>()
                            .shippingAddressEntity
                            .city =
                        value;
                  },
                  hintText: "المدينه",
                  hintStyle: AppStyles.bold13,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    context
                        .watch<OrderInputEntity>()
                        .shippingAddressEntity
                        .apartmentNumber = int.parse(
                      value.toString(),
                    );
                  },
                  hintText: "رقم الطابق , رقم الشقه ..",
                  hintStyle: AppStyles.bold13,
                  textInputType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                EditAddressButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
