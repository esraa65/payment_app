class PaymentIntentModel {
  String ?id;
  String ?object;
  int? amount;
  int ?amountCapturable;
  Map<String, dynamic> ?amountDetails;
  int? amountReceived;
  Map<String, dynamic> ? application;
  Map<String, dynamic> ? applicationFeeAmount;
  AutomaticPaymentMethods ?automaticPaymentMethods;
  Map<String, dynamic> ? canceledAt;
  Map<String, dynamic> ? cancellationReason;
  String? captureMethod;
  String ?clientSecret;
  String ?confirmationMethod;
  int ?created;
  String? currency;
  String ? customer;
  Map<String, dynamic> ? description;
  Map<String, dynamic> ? invoice;
  Map<String, dynamic> ? lastPaymentError;
  Map<String, dynamic> ? latestCharge;
  bool ? livemode;
  Map<String, dynamic> ?metadata;
  Map<String, dynamic> ? nextAction;
  Map<String, dynamic> ? onBehalfOf;
  Map<String, dynamic> ? paymentMethod;
  //PaymentMethodOptions ?paymentMethodOptions;
  List<String>? paymentMethodTypes;
  Map<String, dynamic> ? processing;
  Map<String, dynamic> ? receiptEmail;
  Map<String, dynamic> ? review;
  Map<String, dynamic> ? setupFutureUsage;
  Map<String, dynamic> ? shipping;
  Map<String, dynamic> ? source;
  Map<String, dynamic> ? statementDescriptor;
  Map<String, dynamic> ? statementDescriptorSuffix;
  String ?status;
  Map<String, dynamic> ? transferData;
  Map<String, dynamic> ? transferGroup;

  PaymentIntentModel({
     this.id,
    this.object,
    this.amount,
    this.amountCapturable,
    this.amountDetails,
    this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    this.captureMethod,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.latestCharge,
    this.livemode,
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    //this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) {
    return PaymentIntentModel(
      id: json['id'],
      object: json['object'],
      amount: json['amount'],
      amountCapturable: json['amount_capturable'],
      amountDetails: json['amount_details'],
      amountReceived: json['amount_received'],
      application: json['application'],
      applicationFeeAmount: json['application_fee_amount'],
      automaticPaymentMethods: AutomaticPaymentMethods.fromJson(
        json['automatic_payment_methods'],
      ),
      canceledAt: json['canceled_at'],
      cancellationReason: json['cancellation_reason'],
      captureMethod: json['capture_method'],
      clientSecret: json['client_secret'],
      confirmationMethod: json['confirmation_method'],
      created: json['created'],
      currency: json['currency'],
      customer: json['customer'],
      description: json['description'],
      invoice: json['invoice'],
      lastPaymentError: json['last_payment_error'],
      latestCharge: json['latest_charge'],
      livemode: json['livemode'],
      metadata: json['metadata'],
      nextAction: json['next_action'],
      onBehalfOf: json['on_behalf_of'],
      paymentMethod: json['payment_method'],
      // paymentMethodOptions: PaymentMethodOptions.fromJson(
      //   json['payment_method_options'],
      // ),
      paymentMethodTypes: List<String>.from(json['payment_method_types']),
      processing: json['processing'],
      receiptEmail: json['receipt_email'],
      review: json['review'],
      setupFutureUsage: json['setup_future_usage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statement_descriptor'],
      statementDescriptorSuffix: json['statement_descriptor_suffix'],
      status: json['status'],
      transferData: json['transfer_data'],
      transferGroup: json['transfer_group'],
    );
  }
}

class AutomaticPaymentMethods {
  bool? enabled;

  AutomaticPaymentMethods({this.enabled});

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    return AutomaticPaymentMethods(
      enabled: json['enabled'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
    'enabled': enabled,
  };
}

//  class PaymentMethodOptions {
//   CardOptions ?card;
//   LinkOptions ?link;

//   PaymentMethodOptions({
//     this.card,
//     this.link,
//   });

//   factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
//     return PaymentMethodOptions(
//       card: CardOptions.fromJson(json['card']),
//       link: LinkOptions.fromJson(json['link']),
//     );
//   }
// }

class CardOptions {
  Map<String, dynamic> ? installments;
  Map<String, dynamic> ? mandateOptions;
  Map<String, dynamic> ? network;
  String? requestThreeDSecure;

  CardOptions({
    this.installments,
    this.mandateOptions,
    this.network,
    this.requestThreeDSecure,
  });

  factory CardOptions.fromJson(Map<String, dynamic> json) {
    return CardOptions(
      installments: json['installments'],
      mandateOptions: json['mandate_options'],
      network: json['network'],
      requestThreeDSecure: json['request_three_d_secure'],
    );
  }
}

class LinkOptions {
  dynamic persistentToken;

  LinkOptions({
    this.persistentToken,
  });

  factory LinkOptions.fromJson(Map<String, dynamic> json) {
    return LinkOptions(
      persistentToken: json['persistent_token'],
    );
  }
}