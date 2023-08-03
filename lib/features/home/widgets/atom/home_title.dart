import 'package:flutter/material.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';
import 'package:jiffy/jiffy.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var date = Jiffy();
    print(date.dateTime.day);
    return CustomTitle(
      text: '${date.EEEE}, ${date.dateTime.day} de ${date.MMMM}',
      fontSize: 20,
      color: AppColors.orange,
      fontWeight: FontWeight.bold,
    );
  }
}
