import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/thankyou/check_circle.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/thankyou/custom_dashline_row.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/thankyou/thankyou_card.dart';

class ThankyouBody extends StatelessWidget {
  const ThankyouBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            left: 20 + 10,
            right: 20 + 16,
            bottom: MediaQuery.of(context).size.height * .2 + 20,
            child: const CustomDashlineRow(),
          ),
          Positioned(
              left: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: const CircleAvatar(
                backgroundColor: white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.of(context).size.height * .2,
              child: const CircleAvatar(
                backgroundColor: white,
              )),
         const   Positioned(
              left: 0,
              right: 0,
              top: -50,
              child:CkeckCircle())
        ],
      ),
    );
  }
}
