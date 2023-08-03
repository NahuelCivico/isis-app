import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final EdgeInsets padding;
  final double elevation;
  final Function onPressed;
  final bool isEnabled;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.elevation = 0,
    this.backgroundColor = AppColors.orange,
    this.padding = const EdgeInsets.all(10),
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        shadowColor: AppColors.darkGrey,
        elevation: elevation,
        shape: const StadiumBorder(),
        padding: padding,
        backgroundColor: isEnabled ? backgroundColor : AppColors.disabled,
        minimumSize: const Size.fromHeight(50),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isEnabled ? textColor : AppColors.orange,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
