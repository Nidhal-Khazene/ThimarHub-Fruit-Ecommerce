import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/helper/build_app_bar.dart';
import 'package:ecommerce_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const routeName = "SearchView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "البحث"),
      body: const Padding(
        padding: kPrimaryScreenPadding,
        child: SearchViewBody(),
      ),
    );
  }
}
