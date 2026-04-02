import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/widgets/custom_image_network.dart';
import 'package:ecommerce_app/core/widgets/go_back_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.productEntity});
  final ProductEntity productEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SvgPicture.asset(
              Assets.assetsImagesProductDetailsCircle,
              width: MediaQuery.sizeOf(context).width,
            ),
            const Positioned(
              top: 35,
              right: 10,
              child: Padding(
                padding: kPrimaryScreenPadding,
                child: GoBackCircle(),
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height * 0.15,
              right: MediaQuery.sizeOf(context).width * 0.25,
              child: CustomImageNetwork(
                urlImage: productEntity.urlImage!,
                width: 221,
                height: 167,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
