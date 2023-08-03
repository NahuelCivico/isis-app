import 'package:isisapp/features/students/models/student_model.dart';

class Class {
  String hour;
  List<StudentModel> students;
  bool isExpanded;

  Class({
    required this.hour,
    required this.students,
    this.isExpanded = false,
  });
}
