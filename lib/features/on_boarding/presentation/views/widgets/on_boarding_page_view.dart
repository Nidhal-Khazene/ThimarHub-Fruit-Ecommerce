import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        const PageViewItem(
          isVisible: true,
          image: Assets.assetsImagesOnBoardingImage1,
          backgroundImage: Assets.assetsImagesOnBoardingBackgroundImage1,
          subtitleWidget: Text(
            'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4E5556) /* Grayscale-500 */,
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 1.70,
            ),
          ),
          titleWidget: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'مرحبًا بك في',
                  style: TextStyle(
                    color: Color(0xFF0C0D0D) /* Grayscale-950 */,
                    fontSize: 23,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' Thimar',
                  style: TextStyle(
                    color: Color(0xFF1B5E37) /* Green1-500 */,
                    fontSize: 23,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'HUB',
                  style: TextStyle(
                    color: Color(0xFFF4A91F) /* Orange-500 */,
                    fontSize: 23,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const PageViewItem(
          isVisible: false,
          image: Assets.assetsImagesOnBoardingImage2,
          backgroundImage: Assets.assetsImagesOnBoardingBackgroundImage2,
          subtitleWidget: Text(
            'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4E5456),
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 1.70,
            ),
          ),
          titleWidget: SizedBox(
            width: 301,
            child: Text(
              'ابحث وتسوق',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0C0D0D) /* Grayscale-950 */,
                fontSize: 23,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
