import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:payment_app/feature/payment/domain/payment_repo_abstract.dart';
import 'package:payment_app/feature/payment/presentation/cubit/stripe_states.dart';
import '../../data/model/ephemeral_key/create_ephemeral_key_request.dart';
import '../../data/model/payment_intent_models/payment_intent_request_model/payment_intent_request_model.dart';

class StripeCubit extends Cubit<StripeState> {
  StripeCubit(this.paymentRepo) : super(StripeInitial());
  final PaymentRepo paymentRepo;

  Future makePayment(PaymentIntentRequestModel paymentIntentRequest ) async {
    emit(StripeLoading());
    final response = await paymentRepo.makePayment(paymentIntentRequest: paymentIntentRequest );
    response.fold(
      (l) => emit(StripeFailure(errMessage: l.errorMessage)),
      (r) => emit(StripeSuccess()),
    );
  }

  @override
  void onChange(Change<StripeState> change) {
    // TODO: implement onChange
    log(change.toString());
    super.onChange(change);
  }
}
