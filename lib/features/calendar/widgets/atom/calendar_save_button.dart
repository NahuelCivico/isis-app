import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/routes/routes.dart';
import 'package:isisapp/core/widgets/shared/custom_button.dart';

class CalendarSaveButton extends StatelessWidget {
  const CalendarSaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: 'Guardar',
      fontWeight: FontWeight.bold,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.main);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Alumno agendado con éxito'),
            backgroundColor: AppColors.orange,
          ),
        );
      },
    );
  }
}
