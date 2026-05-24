import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class EditAddressButton extends StatelessWidget {
  const EditAddressButton({super.key, required this.onPressed});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomButton(text: 'حفظ التعديلات', onPressed: onPressed);
  }
}
