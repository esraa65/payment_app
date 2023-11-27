import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_button.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/order_info_item.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Image.asset(
              'assets/images/Group 6.png',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Discount',
            value: r'$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            thickness: 2,
            color: dividerColor,
            height: 34,
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              borderRadius: BorderRadius.circular(15),
              text: 'Complete Payment',
              textColor: black,
              hight: 60,
              background: green),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
