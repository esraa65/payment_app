import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_keys.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/chechout/data/models/ephemeral_key_model.dart';
import 'package:payment_app/features/chechout/data/models/init_payment_sheet_input_model.dart';
import 'package:payment_app/features/chechout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/features/chechout/data/models/payment_intent_model.dart';

class StripeService {
  ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        contentType: Headers.formUrlEncodedContentType,
        body: paymentIntentInputModel.toJson(),
        url: "https://api.stripe.com/v1/payment_intents",
        token: ApiKeys.secretKey);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);

    return paymentIntentModel;
  }

  Future initPaymentSheet({required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
            customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKeySecret,
            customerId: initPaymentSheetInputModel.customerId,

            merchantDisplayName: 'Esraa Khaled'));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(customerId: paymentIntentInputModel.customerId);
    var initPaymentSheetInputModel=InitPaymentSheetInputModel(clientSecret: paymentIntentModel.clientSecret!,
    customerId: paymentIntentInputModel.customerId,
    ephemeralKeySecret:ephemeralKeyModel.secret! );
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> createEphemeralKey({required String customerId}) async {
    var response = await apiService.post(
        contentType: Headers.formUrlEncodedContentType,
        body: {'customer': customerId},
        url: "https://api.stripe.com/v1/ephemeral_keys",
        token: ApiKeys.secretKey,
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretKey}",
          'Stripe-Version': '2023-10-16',
        });
    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);

    return ephemeralKey;
  }
}
