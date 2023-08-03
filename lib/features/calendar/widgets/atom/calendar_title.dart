import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';

class CalendarTitle extends StatelessWidget {
  const CalendarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomTitle(
      text: 'Agendar alumno',
      fontSize: 20,
      color: AppColors.orange,
      fontWeight: FontWeight.bold,
    );
  }
}
