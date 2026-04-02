import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/core/utils/colors.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/add_and_minus_number.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_image_network.dart';
import 'package:ecommerce_app/core/widgets/go_back_circle.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/product_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: Column(
              children: [
                ListTile(
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
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xFFFFC529),
                    ),
                    const SizedBox(width: 9),
                    Text(
                      '${widget.productEntity.avrRating}',
                      style: AppStyles.bold13,
                    ),
                    const SizedBox(width: 9),
                    Text(
                      '(+${widget.productEntity.ratingCount})',
                      style: AppStyles.regular13.copyWith(
                        color: const Color(0xFF9796A1),
                      ),
                    ),
                    const SizedBox(width: 9),
                    Text(
                      'المراجعه',
                      style: AppStyles.bold13.copyWith(
                        color: ColorData.kPrimaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.productEntity.productDescription,
                    style: AppStyles.regular13.copyWith(
                      color: const Color(0xFF969899),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ProductDetailsItem(
                        title: Text(
                          'عام',
                          textAlign: TextAlign.right,
                          style: AppStyles.bold16.copyWith(
                            color: const Color(0xFF23AA49),
                          ),
                        ),
                        subtitle: Text(
                          'الصلاحيه',
                          textAlign: TextAlign.right,
                          style: AppStyles.semiBold13.copyWith(
                            color: const Color(0xFF969899),
                          ),
                        ),
                        trailing: Image.asset(
                          Assets.assetsImagesProductsDetailsCalendar,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ProductDetailsItem(
                        title: widget.productEntity.isOrganic
                            ? Text(
                                '100%',
                                textAlign: TextAlign.right,
                                style: AppStyles.bold16.copyWith(
                                  color: const Color(0xFF23AA49),
                                ),
                              )
                            : Text(
                                '50%',
                                textAlign: TextAlign.right,
                                style: AppStyles.bold16.copyWith(
                                  color: Colors.redAccent,
                                ),
                              ),
                        subtitle: Text(
                          'اوجانيك',
                          textAlign: TextAlign.right,
                          style: AppStyles.semiBold13.copyWith(
                            color: const Color(0xFF969899),
                          ),
                        ),
                        trailing: Image.asset(
                          Assets.assetsImagesProductsDetailsLotus,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ProductDetailsItem(
                        title: Text(
                          '${widget.productEntity.numberOfCalories} كالوري',
                          textAlign: TextAlign.right,
                          style: AppStyles.bold16.copyWith(
                            color: const Color(0xFF23AA49),
                          ),
                        ),
                        subtitle: Text(
                          '${widget.productEntity.unitAmount}جرام ',
                          textAlign: TextAlign.right,
                          style: AppStyles.semiBold13.copyWith(
                            color: const Color(0xFF969899),
                          ),
                        ),
                        trailing: Image.asset(
                          Assets.assetsImagesProductsDetailsMatches,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ProductDetailsItem(
                        title: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '(${widget.productEntity.ratingCount})',
                                style: AppStyles.semiBold13.copyWith(
                                  color: const Color(0xFF969899),
                                ),
                              ),
                              TextSpan(
                                text: ' ${widget.productEntity.ratingCount}',
                                style: AppStyles.bold16.copyWith(
                                  color: const Color(0xFF23AA49),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        ),
                        subtitle: Text(
                          'التقييمات',
                          textAlign: TextAlign.right,
                          style: AppStyles.semiBold13.copyWith(
                            color: const Color(0xFF969899),
                          ),
                        ),
                        trailing: Image.asset(
                          Assets.assetsImagesProductsDetailsFavourites,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const CustomButton(text: "أضف الي السلة"),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
