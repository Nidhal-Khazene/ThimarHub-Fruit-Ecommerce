import 'package:flutter/material.dart';

class ListTileModel {
  final String title;
  final String? subTitle;
  final Widget leading;
  final Widget? trailing;

  ListTileModel({
    required this.title,
    this.subTitle,
    required this.leading,
    this.trailing,
  });
}
