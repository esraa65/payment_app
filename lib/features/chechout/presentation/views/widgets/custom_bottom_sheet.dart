import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/app_router.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/chechout/presentation/manger/payment_cubit.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_method_button_sheet.dart';
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
          BlocConsumer<PaymentCubit, PaymentState>(
            listener: (context, state) {
              if (state is PaymentSuccess) {
                context.push(AppRouter.thankYouView);
              }
              if (state is PaymentFailure) {
                context.pop();
                log(state.errorMessage);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
            },
            builder: (context, state) {
              return CustomButton(
                  onPressed: () {
                    PaymentIntentInputModel paymentIntentInputModel =
                        PaymentIntentInputModel(amount: '100', currency: 'USD',customerId: 'cus_PA9u7tZ3KbcdaS');
                    BlocProvider.of<PaymentCubit>(context).makePayment(
                        paymentIntentInputModel: paymentIntentInputModel);
                  },
                  isLoading: state is PaymentLoading ? true : false,
                  hight: 60,
                  borderRadius: BorderRadius.circular(16),
                  text: 'Continue',
                  textColor: black,
                  background: green);
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
