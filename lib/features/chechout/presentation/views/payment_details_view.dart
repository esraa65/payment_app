import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/payment_details_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: black,
              size: 30,
            )),
        elevation: 0,backgroundColor: white,
        title: const Text('My Cart', style: Styles.style25),
      ),
      body: PaymentDetailsBody(),
    );
  }
}
