import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/features/cart/domain/entities/cart_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/payment_card_entity.dart';
import 'package:ecommerce_app/features/checkout/domain/entities/shipping_address_entity.dart';

class OrderInputEntity {
  final String uID;
  final CartEntity cartEntity;
  PaymentCardEntity paymentCardEntity;
  bool? payWithCash;
  ShippingAddressEntity shippingAddressEntity;

  OrderInputEntity({
    required this.uID,
    required this.cartEntity,
    this.payWithCash,
    required this.paymentCardEntity,
    required this.shippingAddressEntity,
  });

  double calculateShippingCost() {
    if (payWithCash!) {
      return kPayWithCashCost;
    } else {
      return 0;
    }
  }

  double calculateShippingDiscount() {
    return 0;
  }

  double calculateTotalPriceAfterShippingAndDiscount() {
    return cartEntity.calculateTotalPriceItems() +
        calculateShippingCost() -
        calculateShippingDiscount();
  }
}
