import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/styles.dart';

class CreditCartContainer extends StatelessWidget {
  const CreditCartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          const SizedBox(
            width: 23,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Credit Card  ', style: Styles.style18),
                TextSpan(text: 'Mastercard **78 ', style: Styles.style16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
