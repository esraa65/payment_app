import 'package:flutter/material.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/payment_method_istview.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/custom_credit_card.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: PaymentListView(),
        ),
        CustomCreditCart()
      ]),
    );
  }
}
