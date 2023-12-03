import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/thankyou/thankyou_body.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0,
          leading:const Icon(Icons.arrow_back,size: 30,color: black,)),
      body:  Transform.translate
        (offset:const  Offset(0, -30),
          child:const ThankyouBody()),
    );
  }
}
