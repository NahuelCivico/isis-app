import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';
import 'package:isisapp/features/home/models/class_model.dart';
import 'package:isisapp/features/home/widgets/atom/home_title.dart';
import 'package:isisapp/features/students/services/students_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isExpanded = false;

  final List<Class> _data = List<Class>.generate(
    6,
    (index) => Class(
      hour: '${index + 9}:00 hs',
      students: StudentsService.getStudents(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTitle(),
            const SizedBox(height: 20),
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  _data[index].isExpanded = !isExpanded;
                });
              },
              children: [
                for (var item in _data)
                  ExpansionPanel(
                    backgroundColor: AppColors.lightOrange,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: CustomTitle(
                          text: item.hour,
                          fontSize: 18,
                          color: AppColors.darkGrey,
                        ),
                      );
                    },
                    body: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: item.students.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: CustomTitle(
                            text:
                                '${item.students[index].name} ${item.students[index].lastName} - ${item.students[index].phone}',
                          ),
                        );
                      },
                    ),
                    isExpanded: item.isExpanded,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
