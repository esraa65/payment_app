import 'package:dartz/dartz.dart';
import 'package:payment_app/core/utils/failure.dart';
import 'package:payment_app/features/chechout/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo{
Future<Either<Failure,void>>makePayment({required PaymentIntentInputModel paymentIntentInputModel});

}