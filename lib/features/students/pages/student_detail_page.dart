import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_divider.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';

import 'package:isisapp/features/students/models/student_model.dart';

class StudentDetail extends StatelessWidget {
  final StudentModel student;

  const StudentDetail({
    Key? key,
    required this.student,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightOrange,
        title: CustomTitle(
          text: '${student.name} ${student.lastName}',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
          child: Column(
            children: [
              CustomTitle(text: student.email),
              CustomTitle(text: student.phone),
              CustomTitle(text: student.address),
              CustomTitle(text: student.city),
              const SizedBox(height: 20),
              const CustomDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
