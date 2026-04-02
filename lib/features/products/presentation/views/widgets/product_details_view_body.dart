import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/add_and_minus_number.dart';
import 'package:ecommerce_app/core/widgets/custom_image_network.dart';
import 'package:ecommerce_app/core/widgets/go_back_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../cart/domain/entities/cart_item_entity.dart';

class ProductDetailsViewBody extends StatefulWidget {
  const ProductDetailsViewBody({super.key, required this.productEntity});
  final ProductEntity productEntity;

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  late CartItemEntity cartItemEntity;

  @override
  void initState() {
    super.initState();
    cartItemEntity = CartItemEntity(
      productEntity: widget.productEntity,
      quantity: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                  urlImage: widget.productEntity.urlImage!,
                  width: 221,
                  height: 167,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                widget.productEntity.productName,
                style: AppStyles.bold16,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '${widget.productEntity.productPrice} دينار ',
                        style: AppStyles.bold13.copyWith(
                          color: ColorData.kSecondaryColor,
                        ),
                      ),
                      TextSpan(
                        text: '/ الكيلو',
                        style: AppStyles.semiBold13.copyWith(
                          color: ColorData.kLightSecondaryColor,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              trailing: SizedBox(
                width: 150,
                child: AddAndMinusNumber(
                  cartItemEntity: cartItemEntity,
                  circleRadius: 20,
                  iconSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
