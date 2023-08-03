import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String errorEmptyText;
  final String errorInvalidText;
  final Color colorMode;
  final Color fillColor;
  final int maxLength;
  final int minLength;
  final RegExp regExp;
  final BorderSide borderSide;

  const CustomInput({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.errorEmptyText,
    required this.errorInvalidText,
    required this.colorMode,
    this.fillColor = AppColors.transparent,
    this.maxLength = 50,
    this.minLength = 0,
    required this.regExp,
    this.borderSide = BorderSide.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      style: TextStyle(
        color: colorMode,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      controller: textEditingController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        counterText: '',
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        hintStyle: TextStyle(
          color: colorMode,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: borderSide,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: borderSide,
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.error,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.error,
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return value!.isEmpty
            ? errorEmptyText
            : value.length < minLength
                ? errorInvalidText
                : (!regExp.hasMatch(value) ? null : errorInvalidText);
      },
    );
  }
}
