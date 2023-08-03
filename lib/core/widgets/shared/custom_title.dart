import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final TextOverflow overflow;

  const CustomTitle({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.darkGrey,
    this.textAlign = TextAlign.left,
    this.textDecoration = TextDecoration.none,
    this.overflow = TextOverflow.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
      ),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
