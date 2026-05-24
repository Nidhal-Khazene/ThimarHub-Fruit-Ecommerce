import 'package:equatable/equatable.dart';

import '../../../../core/entities/product_entity.dart';

class CartItemEntity extends Equatable {
  final ProductEntity productEntity;
  int quantity;

  CartItemEntity({required this.productEntity, this.quantity = 0});
  num calculateTotalPrice() {
    return productEntity.productPrice * quantity;
  }

  num calculateTotalWeight() {
    return 1 * quantity;
  }

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [productEntity];
}
