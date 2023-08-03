import 'package:flutter/material.dart';

import 'package:isisapp/core/design/colors.dart';

class CustomDivider extends StatelessWidget {
  final double ident;
  final double endIdent;

  const CustomDivider({
    Key? key,
    this.ident = 30,
    this.endIdent = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.orange,
      indent: ident,
      endIndent: endIdent,
    );
  }
}
