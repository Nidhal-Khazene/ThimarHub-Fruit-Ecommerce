import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PriceDynamicRange extends StatefulWidget {
  const PriceDynamicRange({super.key});

  @override
  State<PriceDynamicRange> createState() => _PriceDynamicRangeState();
}

class _PriceDynamicRangeState extends State<PriceDynamicRange> {
  RangeValues _priceRange = const RangeValues(150, 300);

  final double _min = 0;
  final double _max = 1000;

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;

    return LayoutBuilder(
      builder: (context, constraints) {
        const horizontalPadding = 24.0;

        final sliderWidth = constraints.maxWidth - (horizontalPadding * 2);

        final startPercent = (_priceRange.start - _min) / (_max - _min);
        final endPercent = (_priceRange.end - _min) / (_max - _min);

        double startX = sliderWidth * startPercent;
        double endX = sliderWidth * endPercent;

        // 🔥 RTL fix
        if (isRtl) {
          startX = sliderWidth - startX;
          endX = sliderWidth - endX;
        }

        return Stack(
          clipBehavior: Clip.none,
          children: [
            // Start price label
            Positioned(
              left: startX + horizontalPadding - 16,
              top: -26,
              child: _PriceLabel(value: _priceRange.start),
            ),

            // End price label
            Positioned(
              left: endX + horizontalPadding - 16,
              top: -26,
              child: _PriceLabel(value: _priceRange.end),
            ),

            // RangeSlider
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 4,
                activeTrackColor: ColorData.kPrimaryColor,
                inactiveTrackColor: Colors.grey.shade300,
                thumbColor: ColorData.kPrimaryColor,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                overlayShape: SliderComponentShape.noOverlay,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                ),
                child: RangeSlider(
                  values: _priceRange,
                  min: _min,
                  max: _max,
                  divisions: 100,
                  onChanged: (values) {
                    setState(() {
                      _priceRange = values;
                    });
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _PriceLabel extends StatelessWidget {
  final double value;

  const _PriceLabel({required this.value});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Directionality.of(context),
      child: Text(
        '\$${value.round()}',
        style: AppStyles.semiBold13.copyWith(color: ColorData.kPrimaryColor),
      ),
    );
  }
}
