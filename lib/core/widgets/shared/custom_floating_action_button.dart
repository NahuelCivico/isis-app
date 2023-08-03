import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/routes/routes.dart';
import 'package:isisapp/core/widgets/shared/custom_button_bottom_modal.dart';
import 'package:isisapp/core/widgets/shared/custom_divider.dart';
import 'package:isisapp/core/widgets/shared/custom_drag_bar.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          barrierColor: AppColors.barrierColor,
          builder: (context) => Container(
            width: double.infinity,
            height: 220,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 247, 229, 205),
                ],
              ),
            ),
            child: Column(
              children: const [
                SizedBox(height: 20),
                CustomDragBar(),
                SizedBox(height: 20),
                CustomButtonBottomModal(
                  title: 'Agregar Estudiante',
                  icon: FontAwesomeIcons.plus,
                  route: AppRoutes.addStudent,
                ),
                SizedBox(height: 20),
                CustomDivider(),
              ],
            ),
          ),
        );
      },
      elevation: 2,
      backgroundColor: AppColors.orange,
      shape: const CircleBorder(),
      child: Container(
        height: 70,
        width: 70,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.white,
              width: 5,
            ),
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.orange,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 5,
              color: AppColors.orange,
              offset: Offset(1, 2),
            ),
          ],
        ),
      ),
    );
  }
}
