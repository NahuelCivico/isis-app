import 'package:flutter/material.dart';
import 'package:isisapp/features/calendar/widgets/molecules/calendar_text_field.dart';
import 'package:isisapp/features/students/models/student_model.dart';
import 'package:isisapp/features/students/services/students_service.dart';

class CalendarAutoComplete extends StatelessWidget {
  const CalendarAutoComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Autocomplete<StudentModel>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<StudentModel>.empty();
        }
        return StudentsService.getStudents().where((StudentModel student) {
          return student.name
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        }).toList();
      },
      displayStringForOption: (StudentModel option) => option.name,
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController fieldTextEditingController,
        FocusNode fieldFocusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return CalendarTextField(
          fieldFocusNode: fieldFocusNode,
          textEditingController: fieldTextEditingController,
        );
      },
      onSelected: (StudentModel selection) {
        print('You just selected ${selection.name}');
      },
    );
  }
}
