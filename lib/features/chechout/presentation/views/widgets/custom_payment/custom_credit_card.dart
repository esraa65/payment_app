import 'package:flutter/cupertino.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/core/utils/colors.dart';

class CustomCreditCart extends StatefulWidget {
  const CustomCreditCart({Key? key}) : super(key: key);

  @override
  State<CustomCreditCart> createState() => _CustomCreditCartState();
}

class _CustomCreditCartState extends State<CustomCreditCart> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool showBackView = false;
  final GlobalKey<FormState> formKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (p0) {},
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (carditCardModel) {
              cardHolderName=carditCardModel.cardHolderName;
              cardNumber=carditCardModel.cardNumber;
              expiryDate=carditCardModel.expiryDate;
              cvvCode=carditCardModel.cvvCode;
              showBackView=carditCardModel.isCvvFocused;
              setState(() {

              });
            },
            formKey: formKey,

        )
      ],
    );
  }
}
