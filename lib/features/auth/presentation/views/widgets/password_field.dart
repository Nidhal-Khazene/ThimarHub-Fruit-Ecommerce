import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved, this.hintText});

  final void Function(String?)? onSaved;
  final String? hintText;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: widget.hintText ?? "كلمة المرور",
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: !obscureText
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.visibility_off),
      ),
      textInputType: TextInputType.visiblePassword,
    );
  }
}
