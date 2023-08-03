import 'package:flutter/material.dart';

import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';

class CustomButtonBottomModal extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const CustomButtonBottomModal({
    Key? key,
    required this.title,
    required this.icon,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: AppColors.orange,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppColors.white,
            ),
          ),
          const SizedBox(width: 20),
          CustomTitle(
            text: title,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          )
        ],
      ),
    );
  }
}
