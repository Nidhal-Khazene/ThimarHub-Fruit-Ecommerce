import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/checkout/presentation/views/widgets/track_order_view.dart';
import 'package:flutter/material.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  static const routeName = "PaymentSuccessView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text(
          'الدفع',
          textAlign: TextAlign.center,
          style: AppStyles.bold19,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: kPrimaryScreenPadding,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 67),
                  Image.asset(
                    Assets.assetsImagesSuccessImage,
                    width: 154,
                    height: 107,
                  ),
                  const SizedBox(height: 33),
                  Column(
                    children: [
                      const Text('تم بنجاح !', style: AppStyles.bold16),
                      const SizedBox(height: 9),
                      Text(
                        'رقم الطلب : 1245789663#',
                        style: AppStyles.regular13.copyWith(
                          color: ColorData.kFontMediumColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 243),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, TrackOrderView.routeName);
                    },
                    text: "تتبع الطلب",
                  ),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        CustomBottomNavigationBar.routeName,
                      );
                    },
                    text: "الرئيسية",
                    textStyle: AppStyles.bold16.copyWith(
                      color: ColorData.kPrimaryColor,
                      decoration: TextDecoration.underline,
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
