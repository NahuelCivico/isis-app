import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';

class CustomDragBar extends StatelessWidget {
  const CustomDragBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 5,
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
