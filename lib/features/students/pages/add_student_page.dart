import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/routes/routes.dart';
import 'package:isisapp/core/widgets/shared/custom_button.dart';
import 'package:isisapp/core/widgets/shared/custom_input.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';

class AddStudentPage extends StatelessWidget {
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    final addressController = TextEditingController();
    final cityController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightOrange,
        title: const CustomTitle(
          text: 'Agregar Estudiante',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.lightOrange,
                AppColors.white,
              ],
            ),
          ),
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInput(
                  textEditingController: nameController,
                  colorMode: AppColors.darkGrey,
                  borderSide: const BorderSide(
                    color: AppColors.orange,
                    width: 1,
                  ),
                  fillColor: AppColors.transparent,
                  hintText: 'Nombre',
                  errorEmptyText: 'Ingresa un nombre',
                  errorInvalidText: 'Ingrese una nombre válido',
                  regExp: RegExp('[^A-Za-z]'),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  textEditingController: lastNameController,
                  colorMode: AppColors.darkGrey,
                  borderSide: const BorderSide(
                    color: AppColors.orange,
                    width: 1,
                  ),
                  fillColor: AppColors.transparent,
                  hintText: 'Apellido',
                  errorEmptyText: 'Ingresa un apellido',
                  errorInvalidText: 'Ingrese una apellido válido',
                  regExp: RegExp('[^A-Za-z]'),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  textEditingController: emailController,
                  colorMode: AppColors.darkGrey,
                  borderSide: const BorderSide(
                    color: AppColors.orange,
                    width: 1,
                  ),
                  fillColor: AppColors.transparent,
                  hintText: 'Email',
                  errorEmptyText: 'Ingresa un email',
                  errorInvalidText: 'Ingrese un email válido',
                  regExp: RegExp('[^A-Za-z0-9]'),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  textEditingController: phoneController,
                  colorMode: AppColors.darkGrey,
                  borderSide: const BorderSide(
                    color: AppColors.orange,
                    width: 1,
                  ),
                  fillColor: AppColors.transparent,
                  hintText: 'Teléfono',
                  errorEmptyText: 'Ingresa un teléfono',
                  errorInvalidText: 'Ingrese una teléfono válido',
                  regExp: RegExp('[^0-9]'),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  textEditingController: addressController,
                  colorMode: AppColors.darkGrey,
                  borderSide: const BorderSide(
                    color: AppColors.orange,
                    width: 1,
                  ),
                  fillColor: AppColors.transparent,
                  hintText: 'Dirección',
                  errorEmptyText: 'Ingresa una dirección',
                  errorInvalidText: 'Ingrese una dirección válido',
                  regExp: RegExp('[^A-Za-z0-9]'),
                ),
                const SizedBox(height: 20),
                CustomInput(
                  textEditingController: cityController,
                  colorMode: AppColors.darkGrey,
                  borderSide: const BorderSide(
                    color: AppColors.orange,
                    width: 1,
                  ),
                  fillColor: AppColors.transparent,
                  hintText: 'Ciudad',
                  errorEmptyText: 'Ingresa una ciudad',
                  errorInvalidText: 'Ingrese una ciudad válido',
                  regExp: RegExp('[^A-Za-z0-9]'),
                ),
                const SizedBox(height: 35),
                CustomButton(
                  text: 'Agregar',
                  onPressed: () {
                    if (!formKey.currentState!.validate()) return null;
                    Navigator.pushNamed(context, AppRoutes.main);
                  },
                  textColor: AppColors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: AppColors.orange,
                  elevation: 5,
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
