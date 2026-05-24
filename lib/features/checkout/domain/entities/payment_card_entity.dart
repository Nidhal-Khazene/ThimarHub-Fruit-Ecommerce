import '../../../../core/utils/assets.dart';

class PaymentCardEntity {
  String? name;
  String? cardNumber;
  String? expirationCard;
  String? cvv;

  PaymentCardEntity({
    this.name,
    this.cardNumber,
    this.expirationCard,
    this.cvv,
  });
  String getCard(int cardIndex) {
    List<String> payments = [
      Assets.assetsImagesPaymentsApplePay,
      Assets.assetsImagesPaymentsPaypal,
      Assets.assetsImagesPaymentsMastercard,
      Assets.assetsImagesPaymentsVisa,
    ];
    switch (cardIndex) {
      case 0:
        return payments[0];
      case 1:
        return payments[1];
      case 2:
        return payments[2];
      default:
        return payments[3];
    }
  }
}
