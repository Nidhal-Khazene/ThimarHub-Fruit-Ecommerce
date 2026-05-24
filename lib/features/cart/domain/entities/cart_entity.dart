import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';

class CartEntity {
  List<CartItemEntity> cartItemsEntities = [];

  CartEntity({required this.cartItemsEntities});

  double calculateTotalPriceItems() {
    double totalPrice = 0;
    for (var cartItemEntity in cartItemsEntities) {
      totalPrice += cartItemEntity.calculateTotalPrice();
    }
    return totalPrice;
  }

  void addCartItem(CartItemEntity cartItemEntity) {
    cartItemsEntities.add(cartItemEntity);
  }

  void removeCartItem(CartItemEntity cartItemEntity) {
    cartItemsEntities.remove(cartItemEntity);
  }

  bool isProductExist(ProductEntity productEntity) {
    for (var cartItemEntity in cartItemsEntities) {
      if (cartItemEntity.productEntity == productEntity) {
        return true;
      }
    }
    return false;
  }

  CartItemEntity getCartItemEntity(ProductEntity productEntity) {
    for (var cartItemEntity in cartItemsEntities) {
      if (cartItemEntity.productEntity == productEntity) {
        return cartItemEntity;
      }
    }
    return CartItemEntity(productEntity: productEntity, quantity: 1);
  }
}
