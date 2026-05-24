import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/widgets/app_bar_with_back_arrow.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/track_order_header.dart';
import 'package:flutter/material.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  static const String routeName = "TrackOrderView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithBackArrow(context, title: "تتبع الطلب"),
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Column(
            children: [
              const TrackOrderHeader(),
              const SizedBox(height: 19),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  right: 33,
                  left: 66,
                ),
                decoration: const BoxDecoration(color: Color(0x7FF2F3F3)),
                child: Row(children: [Column(children: [])]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
