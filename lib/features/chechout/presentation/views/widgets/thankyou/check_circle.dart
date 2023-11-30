import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';

class CkeckCircle extends StatelessWidget {
  const CkeckCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: whiteGrey,
      radius: 50,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: green,
        child: Icon(
          Icons.check,
          size: 50,
          color: white,
        ),
      ),
    );
  }
}
