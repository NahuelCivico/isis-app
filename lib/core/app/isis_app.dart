import 'package:flutter/material.dart';
import 'package:isisapp/core/design/themes.dart';
import 'package:isisapp/core/routes/routes.dart';
import 'package:isisapp/core/widgets/shared/main_screen.dart';
import 'package:isisapp/features/students/models/student_model.dart';
import 'package:isisapp/features/students/pages/add_student_page.dart';
import 'package:isisapp/features/students/pages/student_detail_page.dart';
import 'package:isisapp/features/students/pages/students_page.dart';

class IsisApp extends StatelessWidget {
  const IsisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Isis Espacio de Arte',
      theme: IsisThemes.defaultTheme(),
      initialRoute: AppRoutes.main,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.main:
            return MaterialPageRoute(
              builder: (context) => const MainScreen(),
            );
          case AppRoutes.students:
            return MaterialPageRoute(
              builder: (context) => const StudentsPage(),
            );
          case AppRoutes.addStudent:
            return MaterialPageRoute(
              builder: (context) => const AddStudentPage(),
            );
          case AppRoutes.studentDetail:
            return MaterialPageRoute(
              builder: (context) =>
                  StudentDetail(student: settings.arguments as StudentModel),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const MainScreen(),
            );
        }
      },
      // routes: {
      //   AppRoutes.main: (context) => const MainScreen(),
      //   AppRoutes.students: (context) => const StudentsPage(),
      //   AppRoutes.addStudent: (context) => const AddStudentPage(),
      //   AppRoutes.studentDetail: (context) => const StudentDetail(student: ),
      // },
    );
  }
}
