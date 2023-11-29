import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/core/utils/colors.dart';

class PaymentMethodContainer extends StatelessWidget {
  const PaymentMethodContainer({Key? key,required this.isActive,required this.image}) : super(key: key);
final bool isActive;
final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:  BorderSide(width: 1.50, color:isActive? green:grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows:  [
          BoxShadow(
            color:isActive? green:grey,
            blurRadius: 4,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(15)),
        child: SvgPicture.asset(image,fit: BoxFit.scaleDown,),
      ),
    );
  }
}
