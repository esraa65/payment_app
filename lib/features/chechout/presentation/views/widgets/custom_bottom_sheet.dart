import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_button.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/payment_method_istview.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentListView(),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              hight: 60,
              borderRadius: BorderRadius.circular(16),
              text: 'Continue',
              textColor: black,
              background: green),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
