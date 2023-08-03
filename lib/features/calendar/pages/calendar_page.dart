import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_button.dart';
import 'package:isisapp/features/calendar/widgets/atom/calendar_save_button.dart';
import 'package:isisapp/features/calendar/widgets/atom/calendar_title.dart';
import 'package:isisapp/features/calendar/widgets/organisms/calendar_autocomplete.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CalendarTitle(),
          const SizedBox(height: 20),
          const CalendarAutoComplete(),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: '${dateTime.day}/${dateTime.month}/${dateTime.year}',
                  backgroundColor: AppColors.orange,
                  onPressed: () async {
                    final date = await pickDate();
                    if (date == null) return; // user pressed cancel
                    setState(() => dateTime = date); // user pressed ok
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  text: '$hours:$minutes',
                  backgroundColor: AppColors.orange,
                  onPressed: () async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: const TimeOfDay(hour: 0, minute: 0),
                    );
                    if (time == null) return; // user pressed cancel
                    setState(
                      () => dateTime = DateTime(
                        dateTime.year,
                        dateTime.month,
                        dateTime.day,
                        time.hour,
                        time.minute,
                      ),
                    ); // user pressed ok
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const CalendarSaveButton()
        ],
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );
}
