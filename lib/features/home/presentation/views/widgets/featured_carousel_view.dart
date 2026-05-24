import 'package:flutter/material.dart';

import 'featured_item.dart';

class FeaturedCarouselView extends StatefulWidget {
  const FeaturedCarouselView({super.key});

  @override
  State<FeaturedCarouselView> createState() => _FeaturedCarouselViewState();
}

class _FeaturedCarouselViewState extends State<FeaturedCarouselView> {
  late CarouselController _carouselController;
  @override
  void initState() {
    super.initState();
    _carouselController = CarouselController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _carouselController.animateTo(
        150,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselView(
        controller: _carouselController,
        itemSnapping: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        itemExtent: MediaQuery.sizeOf(context).width,
        children: List.generate(3, (index) => const FeaturedItem()),
      ),
    );
  }
}
