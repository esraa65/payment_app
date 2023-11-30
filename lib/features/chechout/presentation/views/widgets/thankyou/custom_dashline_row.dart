import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';

class CustomDashlineRow extends StatelessWidget {
  const CustomDashlineRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
        children: List.generate(
            25,
                (index) => Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 2.0),
                child: Container(
                  height: 2,
                  color: grey,
                ),
              ),
            )));
  }
}
