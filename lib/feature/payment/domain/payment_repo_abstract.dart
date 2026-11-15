import 'package:dartz/dartz.dart';
import 'package:payment_app/core/network/failure.dart';
import 'package:payment_app/feature/payment/data/model/customer_models/create_customer_request_model.dart';
import '../data/model/payment_intent_models/payment_intent_request_model/payment_intent_request_model.dart';

abstract class PaymentRepo {
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentRequestModel paymentIntentRequest,
  });

  Future<Either<Failure, void>> createCustomer({
    required CreateCustomerRequestModel request,
  });
}
