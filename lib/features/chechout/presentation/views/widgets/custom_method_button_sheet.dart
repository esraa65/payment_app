import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/features/chechout/presentation/views/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.borderRadius,
      required this.text,
      required this.textColor,
      required this.background,
      this.hight,
      this.onPressed,
      this.fontSize,
      this.isLoading=false,
      });

  final String text;
  final Color background;
  final Color textColor;
  final BorderRadius borderRadius;
  final double? fontSize;
  final double? hight;
  final bool isLoading;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: background,
            shape: RoundedRectangleBorder(borderRadius: borderRadius)),
        child: isLoading ?const Center(child: CircularProgressIndicator()):CustomText(
          title: text,
          color: textColor,
          styles: Styles.style22,
        ),
      ),
    );
  }
}
