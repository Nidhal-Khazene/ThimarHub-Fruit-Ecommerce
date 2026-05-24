import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/notification_container.dart';

AppBar buildAppBar(
  BuildContext context, {
  required String title,
  bool isNotificationIconShow = true,
  void Function()? goBackNavigatorFunc,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    leadingWidth: 70,
    leading: Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F5)),
          ),
        ),
        child: Transform.rotate(
          angle: math.pi,
          child: GestureDetector(
            onTap:
                goBackNavigatorFunc ??
                () {
                  Navigator.pop(context);
                },
            child: const Icon(Icons.arrow_forward_ios, size: 22),
          ),
        ),
      ),
    ),
    actionsPadding: const EdgeInsets.only(left: 16),
    actions: [
      Visibility(
        replacement: const SizedBox(),
        visible: isNotificationIconShow,
        child: const NotificationContainer(),
      ),
    ],
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(title, style: AppStyles.bold19),
  );
}
