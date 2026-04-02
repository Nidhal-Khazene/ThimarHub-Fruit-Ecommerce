import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [CustomTextFormField(hintText: "اكتب التعليق..",prefixIcon: ,)]),
    );
  }
}
