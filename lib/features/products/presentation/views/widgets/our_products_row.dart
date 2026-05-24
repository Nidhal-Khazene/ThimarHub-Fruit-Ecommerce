import 'package:ecommerce_app/core/models/our_products_row_model.dart';
import 'package:ecommerce_app/core/utils/assets.dart';
import 'package:ecommerce_app/features/products/presentation/views/widgets/our_product_row_item.dart';
import 'package:flutter/material.dart';

class OurProductsRow extends StatelessWidget {
  const OurProductsRow({super.key});

  static List<OurProductsRowModel> list = [
    OurProductsRowModel(
      productImage: Assets.assetsImagesProductsAnanas,
      productName: "أناناس",
    ),
    OurProductsRowModel(
      productImage: Assets.assetsImagesProductsAvocado,
      productName: "افوكادو",
    ),
    OurProductsRowModel(
      productImage: Assets.assetsImagesProductsBananas,
      productName: "موز",
    ),
    OurProductsRowModel(
      productImage: Assets.assetsImagesProductsMango,
      productName: "مانجو",
    ),
    OurProductsRowModel(
      productImage: Assets.assetsImagesProductsStrawberry,
      productName: "فرولة",
    ),
    OurProductsRowModel(
      productImage: Assets.assetsImagesProductsWatermelon,
      productName: "بطيخ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 9,
        children: List.generate(
          list.length,
          (index) => OurProductRowItem(productItem: list[index]),
        ),
      ),
    );
  }
}
