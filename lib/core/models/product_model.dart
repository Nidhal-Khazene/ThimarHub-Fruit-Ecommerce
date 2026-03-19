import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/models/review_model.dart';

class ProductModel {
  final String productName;
  final String productCode;
  final String productDescription;
  final num productPrice;
  final bool isFeatured;
  final String? urlImage;
  final String? imagePath;
  final int expirationsMonth;
  final bool isOrganic;
  final int numberOfCalories;
  final num avrRating;
  final num ratingCount;
  final int unitAmount;
  final List<ReviewModel> reviews;
  final int sellingCount;

  ProductModel({
    required this.sellingCount,
    required this.reviews,
    this.avrRating = 0,
    this.ratingCount = 0,
    required this.expirationsMonth,
    this.isOrganic = false,
    required this.numberOfCalories,
    required this.unitAmount,
    required this.productName,
    required this.productCode,
    required this.productDescription,
    required this.productPrice,
    this.isFeatured = false,
    this.urlImage,
    this.imagePath,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      sellingCount: json["sellingCount"] ?? 0,
      reviews: json["reviews"] != null
          ? List<ReviewModel>.from(
              json["reviews"].map((e) => ReviewModel.fromJson(e)),
            )
          : [],
      expirationsMonth: json["expirationsMonth"] ?? 0,
      numberOfCalories: json["numberOfCalories"] ?? 0,
      unitAmount: json["unitAmount"] ?? 0,
      productName: json["productName"] ?? '',
      productCode: json["productCode"] ?? '',
      productDescription: json["productDescription"] ?? '',
      productPrice: json["productPrice"] ?? 0,
      isFeatured: json["isFeatured"] ?? false,
      urlImage: json["urlImage"],
      imagePath: json["imagePath"],
      isOrganic: json["isOrganic"] ?? false,
      avrRating: json["avrRating"] ?? 0,
      ratingCount: json["ratingCount"] ?? 0,
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      reviews: reviews.map((e) => e.toEntity()).toList(),
      expirationsMonth: expirationsMonth,
      isOrganic: isOrganic,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      productName: productName,
      productCode: productCode,
      productDescription: productDescription,
      productPrice: productPrice,
      urlImage: urlImage,
      imagePath: imagePath,
      isFeatured: isFeatured,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "sellingCount": sellingCount,
      "productName": productName,
      "productCode": productCode,
      "productDescription": productDescription,
      "productPrice": productPrice,
      "isFeatured": isFeatured,
      "urlImage": urlImage,
      "imagePath": imagePath,
      "expirationsMonth": expirationsMonth,
      "isOrganic": isOrganic,
      "numberOfCalories": numberOfCalories,
      "unitAmount": unitAmount,
      "avrRating": avrRating,
      "ratingCount": ratingCount,
      "reviews": reviews.map((e) => e.toJson()).toList(),
    };
  }
}
