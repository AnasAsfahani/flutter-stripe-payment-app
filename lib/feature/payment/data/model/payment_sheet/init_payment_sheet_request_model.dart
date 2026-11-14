class InitPaymentSheetRequestModel {
  final String paymentIntentClientSecret;
  final String ephemeralKey;
  final String customerId;

  InitPaymentSheetRequestModel({
    required this.paymentIntentClientSecret,
    required this.ephemeralKey,
    required this.customerId,
  });
}
