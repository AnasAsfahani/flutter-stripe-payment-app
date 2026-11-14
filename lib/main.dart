import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/api_keys.dart';
import 'package:payment_app/payment_app.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const PaymentApp());
}

//Basic stripe payment flow
//1- PaymentIntentObject create paymentIntent required (amount , currency )
// 2- init payment sheet(MerchantName , PaymentIntentObject[PaymentIntentClientSecret])
// 3- present payment sheet / await stripe.instance.presentPaymentSheet

//Save Customer Info Card and connect it to an customer object in stripe
//next time stripe will know this customer then return it card methods used

//customerId we will get from customer object in stripe we will create it when user create account in app then save customerId to pass it
//1- PaymentIntentObject create paymentIntent required (amount , currency , customerId)
// 2- keySecret  createEphemeralKey(stripeVersion , customerId)
// 2- init payment sheet(MerchantName , PaymentIntentObject[PaymentIntentClientSecret] ,ephemeralKey )
// 3- present payment sheet / await stripe.instance.presentPaymentSheet
