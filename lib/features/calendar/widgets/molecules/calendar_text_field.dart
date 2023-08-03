import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:isisapp/core/design/colors.dart';

class CalendarTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode fieldFocusNode;

  const CalendarTextField({
    Key? key,
    required this.textEditingController,
    required this.fieldFocusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: AppColors.darkGrey,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      controller: textEditingController,
      focusNode: fieldFocusNode,
      decoration: const InputDecoration(
        prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
        prefixIconColor: AppColors.orange,
        hintText: 'Buscar alumno',
        hintStyle: TextStyle(
          color: AppColors.lightGrey,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.mediumOrange,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.mediumOrange,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.error,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: AppColors.error,
          ),
        ),
      ),
    );
  }
}
