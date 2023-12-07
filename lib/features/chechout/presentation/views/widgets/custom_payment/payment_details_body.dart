import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:payment_app/core/utils/app_router.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_method_button_sheet.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/payment_method_istview.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_payment/custom_credit_card.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: PaymentListView(),
      ),
      SliverToBoxAdapter(
          child: CustomCreditCart(
        autovalidateMode: autovalidateMode,
        formKey: formKey,
      )),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 16, right: 16),
            child: CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    context.push(AppRouter.thankYouView);
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                hight: 65,
                borderRadius: BorderRadius.circular(15),
                text: 'Pay',
                textColor: black,
                background: green),
          ),
        ),
      )
    ]);
  }
}
