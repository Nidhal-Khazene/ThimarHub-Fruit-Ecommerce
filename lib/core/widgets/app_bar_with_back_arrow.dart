import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBarWithBackArrow(context, {required String title}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back_ios_new_outlined, size: 22),
    ),

    centerTitle: true,
    backgroundColor: Colors.white,
    title: Text(title, style: AppStyles.bold19),
  );
}
