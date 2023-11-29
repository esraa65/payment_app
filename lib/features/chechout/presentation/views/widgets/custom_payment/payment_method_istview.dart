import 'package:flutter/material.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/payment_method_container.dart';

class PaymentListView extends StatefulWidget {
  const PaymentListView({Key? key}) : super(key: key);

  @override
  State<PaymentListView> createState() => _PaymentListViewState();
}

class _PaymentListViewState extends State<PaymentListView> {
  final List<String> paymentMethods = const [
    'assets/images/cart.svg',
    'assets/images/paypal.svg',
    'assets/images/SVGRepo_iconCarrier.svg',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethods.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodContainer(
                image: paymentMethods[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
