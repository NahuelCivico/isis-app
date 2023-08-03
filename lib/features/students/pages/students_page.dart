import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/routes/routes.dart';
import 'package:isisapp/core/widgets/shared/custom_divider.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';
import 'package:isisapp/features/students/services/students_service.dart';

class StudentsPage extends StatelessWidget {
  const StudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final students = StudentsService.getStudents();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightOrange,
        title: const CustomTitle(
          text: 'Alumnos',
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
      body: Container(
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
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          itemCount: StudentsService.getStudents().length,
          itemBuilder: (context, index) {
            return ListTile(
              title: CustomTitle(
                text: '${students[index].name} ${students[index].lastName}',
                fontSize: 18,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.bold,
              ),
              subtitle: CustomTitle(text: students[index].email),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.orange,
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.studentDetail,
                  arguments: students[index],
                );
              },
            );
          },
          separatorBuilder: (context, index) => const CustomDivider(
            ident: 30,
            endIdent: 30,
          ),
        ),
      ),
    );
  }
}
