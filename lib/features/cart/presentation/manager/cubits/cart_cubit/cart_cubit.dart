import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_item_entity.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  CartEntity cartEntity = CartEntity(cartItemsEntities: []);

  void addProductEntity(ProductEntity productEntity) {
    bool isProductExist = cartEntity.isProductExist(productEntity);
    CartItemEntity cartItemEntity = cartEntity.getCartItemEntity(productEntity);
    if (!isProductExist) {
      cartEntity.addCartItem(cartItemEntity);
    } else {
      cartItemEntity.increaseQuantity();
    }
    emit(CartAdded());
  }

  void removeCartItemEntity(CartItemEntity cartItemEntity) {
    cartEntity.removeCartItem(cartItemEntity);
    emit(CartRemoved());
  }
}
