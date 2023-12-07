import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:payment_app/features/chechout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/chechout/data/models/repos/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((failure) => emit(PaymentFailure(failure.errMessage)),
        (r) => emit(PaymentSuccess()));
  }
  @override
  void onChange(Change<PaymentState> change) {
   log(change.toString());
    super.onChange(change);
  }
}

