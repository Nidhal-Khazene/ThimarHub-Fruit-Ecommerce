import 'package:ecommerce_app/features/home/presentation/views/widgets/custom_home_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [CustomHomeSearch(enabled: true)]),
    );
  }
}
