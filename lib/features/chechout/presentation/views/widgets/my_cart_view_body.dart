import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/data/models/repos/checkout_repo_implementation.dart';
import 'package:payment_app/features/chechout/presentation/manger/payment_cubit.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_bottom_sheet.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_method_button_sheet.dart';
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
              onPressed: () {
                //context.push(AppRouter.paymentDetailsView);
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => PaymentCubit(CkeckoutImplementation()),
                      child:const PaymentMethodBottomSheet(),
                    );
                  },
                );
              },
              borderRadius: BorderRadius.circular(15),
              text: 'Complete Payment',
              textColor: black,
              hight: 60,
              background: green),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

