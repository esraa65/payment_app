import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_text.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key,required this.title,required this.value,}) : super(key: key);
final String title,value;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomText(styles: Styles.style24,
          title: title,
          color: black,
        ),
        const Spacer(),
        CustomText(title: value, color: black,styles:Styles.style24 ),
      ],
    );
  }
}
