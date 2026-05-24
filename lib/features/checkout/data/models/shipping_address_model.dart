import 'package:ecommerce_app/features/checkout/domain/entities/shipping_address_entity.dart';

class ShippingAddressModel {
  int? id;
  String? fullName;
  String? email;
  String? address;
  String? city;
  int? apartmentNumber;

  ShippingAddressModel({
    this.fullName,
    this.id,
    this.email,
    this.address,
    this.city,
    this.apartmentNumber,
  });

  factory ShippingAddressModel.fromEntity(
    ShippingAddressEntity shippingAddressEntity,
  ) {
    return ShippingAddressModel(
      address: shippingAddressEntity.address,
      apartmentNumber: shippingAddressEntity.apartmentNumber,
      city: shippingAddressEntity.city,
      email: shippingAddressEntity.email,
      fullName: shippingAddressEntity.fullName,
      id: shippingAddressEntity.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "fullName": fullName,
      "email": email,
      "address": address,
      "city": city,
      "apartmentNumber": apartmentNumber,
    };
  }
}
