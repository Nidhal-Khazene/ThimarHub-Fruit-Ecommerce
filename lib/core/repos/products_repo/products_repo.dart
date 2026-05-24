import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/errors/failures.dart';

abstract class ProductsRepo {
  Future<Either<Failure, List<ProductEntity>>> getProducts();

  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts();
}
