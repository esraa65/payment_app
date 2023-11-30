import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_text.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key, required this.title, required this.infoTitle})
      : super(key: key);
  final String title, infoTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(title: title, color: black, styles: Styles.style18),
        CustomText(title: infoTitle, color: black, styles: Styles.styleBold18),
      ],
    );
  }
}
