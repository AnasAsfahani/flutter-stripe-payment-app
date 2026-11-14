import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/api_keys.dart';
import 'package:payment_app/core/network/api_service.dart';
import 'package:payment_app/feature/payment/data/model/customer_models/create_customer_request_model.dart';
import 'package:payment_app/feature/payment/data/model/customer_models/create_customer_response_model.dart';
import 'package:payment_app/feature/payment/data/model/ephemeral_key/create_ephemeral_key_request.dart';
import 'package:payment_app/feature/payment/data/model/ephemeral_key/ephemeral_key.dart';

import '../../../feature/payment/data/model/payment_intent_models/payment_intent_request_model/payment_intent_request_model.dart';
import '../../../feature/payment/data/model/payment_intent_models/payment_intent_response_model/payment_intent_response_model..dart';
import '../../../feature/payment/data/model/payment_sheet/init_payment_sheet_request_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<CreateCustomerResponseModel> createCustomer({
    required CreateCustomerRequestModel request,
  }) async {
    final response = await apiService.post(
      url: "https://api.stripe.com/v1/customers",
      token: ApiKeys.secretKey,
      body: request.toJson(),
      contentType: "application/x-www-form-urlencoded",
    );

    return CreateCustomerResponseModel.fromJson(response!.data);
  }

  Future<EphemeralKey> createEphemeralKey({
    required CreateEphemeralKeyRequest request,
  }) async {
    final response = await apiService.post(
      url: "https://api.stripe.com/v1/ephemeral_keys",
      token: ApiKeys.secretKey,
      body: request.toJson(),
      contentType: "application/x-www-form-urlencoded",
      stripeVersion: true,
    );

    return EphemeralKey.fromJson(response!.data);
  }

  Future<PaymentIntentResponseModel> createPaymentIntent(
      PaymentIntentRequestModel request,
      ) async {
    final response = await apiService.post(
      url: "https://api.stripe.com/v1/payment_intents",
      token: ApiKeys.secretKey,
      body: request.toJson(),
      contentType: "application/x-www-form-urlencoded",
    );

    return PaymentIntentResponseModel.fromJson(response!.data);
  }

  Future initPaymentSheet({
    required InitPaymentSheetRequestModel initPaymentSheetRequestModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret:
        initPaymentSheetRequestModel.paymentIntentClientSecret,
        customerId: initPaymentSheetRequestModel.customerId,
        customerEphemeralKeySecret: initPaymentSheetRequestModel.ephemeralKey,
        merchantDisplayName: "Anas Asfahani",
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({
    required PaymentIntentRequestModel paymentIntentRequest,
  }) async {
    var paymentIntentResponseModel = await createPaymentIntent(
      paymentIntentRequest,
    );
    var ephemeralKey = await createEphemeralKey(
      request: CreateEphemeralKeyRequest(
        customerId: paymentIntentRequest.customerId,
      ),
    );
    await initPaymentSheet(
      initPaymentSheetRequestModel: InitPaymentSheetRequestModel(
        paymentIntentClientSecret: paymentIntentResponseModel.clientSecret!,
        ephemeralKey: ephemeralKey.secret!,
        customerId: paymentIntentRequest.customerId,
      ),
    );
    await displayPaymentSheet();
  }
}
