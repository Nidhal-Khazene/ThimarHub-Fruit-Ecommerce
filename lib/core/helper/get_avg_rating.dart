import 'package:ecommerce_app/core/models/review_model.dart';

num? getAvgRating(List<ReviewModel> reviews) {
  num sum = 0.0;
  for (var review in reviews) {
    sum += review.rating;
  }
  num averageRating = 0;
  if (reviews.isNotEmpty) {
    averageRating = sum / reviews.length;
  }
  return averageRating;
}
