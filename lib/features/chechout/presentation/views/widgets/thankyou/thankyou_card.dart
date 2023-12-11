import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/colors.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_text.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/thankyou/credit_cart_container.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/thankyou/payment_success_text.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: whiteGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 16 + 40, right: 15, left: 15),
          child: Column(
            children: [
              const CustomText(
                  title: 'Thank you!',
                  color: black,
                  styles: Styles.style25,
                  textAlign: TextAlign.center),
              CustomText(
                  title: 'Your transaction was successful',
                  color: black,
                  styles: Styles.style20,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 30,
              ),
              const PaymentSuccess(title: 'Date', infoTitle: '01/24/2023'),
              const SizedBox(
                height: 15,
              ),
              const PaymentSuccess(title: 'Time', infoTitle: '10:15 AM'),
              const SizedBox(
                height: 15,
              ),
              const PaymentSuccess(
                title: 'To',
                infoTitle: 'Sam Louis',
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                height: 20,
                color: dividerColor,
                thickness: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              const TotalPrice(
                value: r'$50.97',
                title: 'Total',
              ),
              const SizedBox(
                height: 25,
              ),
              const CreditCartContainer(),
              const Spacer(),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesomeIcons.barcode,
                    size: 100,
                  ),
                  Container(
                    width: 113,
                    height: 58,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50, color: green),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        textAlign: TextAlign.center,
                        title: 'PAID',
                        color: green,
                        styles: Styles.style24.copyWith(color: green),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: ((MediaQuery.of(context).size.height * .2 + 20)/2)-29,
              )
            ],
          )),
    );
  }
}
