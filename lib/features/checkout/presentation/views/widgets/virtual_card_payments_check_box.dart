import 'package:flutter/material.dart';

import '../../../../auth/presentation/views/widgets/custom_check_box.dart';

class VirtualCardPaymentsCheckBox extends StatefulWidget {
  const VirtualCardPaymentsCheckBox({super.key});

  @override
  State<VirtualCardPaymentsCheckBox> createState() =>
      _VirtualCardPaymentsCheckBoxState();
}

class _VirtualCardPaymentsCheckBoxState
    extends State<VirtualCardPaymentsCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CustomCheckBox(
      isChecked: isChecked,
      onChecked: (bool value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
