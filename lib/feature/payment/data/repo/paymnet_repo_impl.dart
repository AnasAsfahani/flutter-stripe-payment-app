import 'package:dartz/dartz.dart';
import 'package:payment_app/core/utils/service/stripe_service.dart';
import 'package:payment_app/feature/payment/data/model/customer_models/create_customer_request_model.dart';
import 'package:payment_app/feature/payment/domain/payment_repo_abstract.dart';
import '../../../../core/network/failure.dart';
import '../model/payment_intent_models/payment_intent_request_model/payment_intent_request_model.dart';

class PaymentRepoImpl implements PaymentRepo {
  final StripeService _stripeService = StripeService();

  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentRequestModel paymentIntentRequest,
  }) async {
    try {
      await _stripeService.makePayment(paymentIntentRequest: paymentIntentRequest );
      return right(null);
    } catch (e) {
      return left(ServerError(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> createCustomer({
    required CreateCustomerRequestModel request,
  }) async {
    try {
      await _stripeService.createCustomer(request: request);
      return right(null);
    } catch (e) {
      return left(ServerError(errorMessage: e.toString()));
    }
  }
}
