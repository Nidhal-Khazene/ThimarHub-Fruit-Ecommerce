import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/firebase_auth_service.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(Assets.assetsImagesPlant),
        ),
        Image.asset(Assets.assetsImagesLogoSplash, height: 350, width: 350),
        SvgPicture.asset(Assets.assetsImagesCirclesSplash, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingViewSeen = SharedPreferencesSingleton.getBool(
      kIsOnBoardingViewSeen,
    );
    Future.delayed(const Duration(seconds: 2), () {
      if (isOnBoardingViewSeen) {
        if (FirebaseAuthService.isLoggedIn()) {
          Navigator.pushReplacementNamed(
            context,
            CustomBottomNavigationBar.routeName,
          );
        } else {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
