import 'package:flutter/material.dart';
import 'package:payment_app/feature/payment/presentation/page/my_cart_screen.dart';

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartScreen(),
    );
  }
}
