import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_button.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/payment_method_istview.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/custom_credit_card.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();

    return  CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: PaymentListView(),
      ),
      const SliverToBoxAdapter(child: CustomCreditCart()),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0,left: 16,right: 16),
            child: CustomButton(hight: 65,
                borderRadius: BorderRadius.circular(15),
                text: 'Pay',
                textColor: black,
                background: green),
          ),
        ),
      )
    ]);
  }
}
