import 'package:flutter/material.dart';


//used as any text in project
class CustomText extends StatelessWidget {
  final  String title;
  final Color color;
  final  FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;
  final double height;
  final TextDecoration textDecoration;
final TextStyle styles;
  const CustomText({
    Key? key,
    required this.title,
    required this.color ,
    required this.styles ,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 16,
    this.textAlign = TextAlign.start,
    this.height = 1.5,
    this.textDecoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign, style: styles,
    );
  }
}