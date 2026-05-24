import 'package:flutter/material.dart';

import 'featured_carousel_view.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [FeaturedCarouselView(), SizedBox(height: 12)],
    );
  }
}
