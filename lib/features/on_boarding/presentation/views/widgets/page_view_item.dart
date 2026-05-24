import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/services/shared_preferences_singleton.dart';
import 'package:ecommerce_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitleWidget,
    required this.titleWidget,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final Widget subtitleWidget;
  final Widget titleWidget;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: SvgPicture.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 24,
                  left: 24,
                  bottom: 24,
                  top: 48,
                ),
                child: Visibility(
                  visible: isVisible,
                  child: GestureDetector(
                    onTap: () {
                      SharedPreferencesSingleton.setBool(
                        kIsOnBoardingViewSeen,
                        true,
                      );
                      Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginView.routeName);
                    },
                    child: const Opacity(
                      opacity: 0.5,
                      child: Text("تخط", style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        titleWidget,
        const SizedBox(height: 24),
        Padding(padding: const EdgeInsets.all(16), child: subtitleWidget),
      ],
    );
  }
}
