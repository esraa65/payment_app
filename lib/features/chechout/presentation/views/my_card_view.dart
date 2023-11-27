import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/my_cart_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: black,
              size: 30,
            )),
        elevation: 0,
        title: const Text('My Cart', style: Styles.style25),
      ),
      body: const MyCartViewBody(),
    );
  }
}
