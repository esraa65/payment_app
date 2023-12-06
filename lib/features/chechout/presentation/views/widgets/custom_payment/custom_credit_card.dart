import 'package:flutter/cupertino.dart';
//import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCart extends StatefulWidget {
  CustomCreditCart(
      {Key? key, required this.formKey, required this.autovalidateMode})
      : super(key: key);
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCart> createState() => _CustomCreditCartState();
}

class _CustomCreditCartState extends State<CustomCreditCart> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // CreditCardWidget(
        //   cardNumber: cardNumber,
        //   expiryDate: expiryDate,
        //   cardHolderName: cardHolderName,
        //   cvvCode: cvvCode,
        //   showBackView: showBackView,
        //   isHolderNameVisible: true,
        //   onCreditCardWidgetChange: (p0) {},
        // ),
        // CreditCardForm(
        //   autovalidateMode: widget.autovalidateMode,
        //   cardNumber: cardNumber,
        //   expiryDate: expiryDate,
        //   cardHolderName: cardHolderName,
        //   cvvCode: cvvCode,
        //   onCreditCardModelChange: (carditCardModel) {
        //     cardHolderName = carditCardModel.cardHolderName;
        //     cardNumber = carditCardModel.cardNumber;
        //     expiryDate = carditCardModel.expiryDate;
        //     cvvCode = carditCardModel.cvvCode;
        //     showBackView = carditCardModel.isCvvFocused;
        //     setState(() {});
        //   },
        //   formKey: widget.formKey,
        // )
      ],
    );
  }
}
