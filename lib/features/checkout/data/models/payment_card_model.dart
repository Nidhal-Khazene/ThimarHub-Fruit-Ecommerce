import 'package:ecommerce_app/features/checkout/domain/entities/payment_card_entity.dart';

class PaymentCardModel {
  final String name;
  final String cardNumber;
  final String expirationCard;
  final String cvv;

  PaymentCardModel({
    required this.name,
    required this.cardNumber,
    required this.expirationCard,
    required this.cvv,
  });

  factory PaymentCardModel.fromEntity(PaymentCardEntity paymentCardEntity) {
    return PaymentCardModel(
      name: paymentCardEntity.name!,
      cardNumber: paymentCardEntity.cardNumber!,
      expirationCard: paymentCardEntity.expirationCard!,
      cvv: paymentCardEntity.cvv!,
    );
  }

  Map<String, dynamic> toJson() => {
    "name": name,
    "cardNumber": cardNumber,
    "expirationCard": expirationCard,
    "cvv": cvv,
  };
}
