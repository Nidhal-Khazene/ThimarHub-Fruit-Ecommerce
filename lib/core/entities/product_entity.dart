import 'dart:io';

import 'package:ecommerce_app/core/entities/review_entity.dart';
import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String productName, productCode, productDescription;
  String? urlImage;
  String? imagePath;
  final num productPrice;
  final File? fileImage;
  final bool isFeatured;
  final int expirationsMonth;
  final bool isOrganic;
  final int numberOfCalories;
  final num avrRating;
  final num ratingCount;
  final int unitAmount;
  final List<ReviewEntity> reviews;

  ProductEntity({
    required this.reviews,
    this.avrRating = 0,
    this.ratingCount = 0,
    required this.expirationsMonth,
    required this.isOrganic,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.productName,
    required this.productCode,
    required this.productDescription,
    this.urlImage,
    this.imagePath,
    required this.productPrice,
    this.fileImage,
    required this.isFeatured,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [productCode];
}
