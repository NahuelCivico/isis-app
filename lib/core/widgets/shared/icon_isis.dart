import 'package:flutter/material.dart';

class IconIsis extends StatelessWidget {
  final double size;

  const IconIsis({
    Key? key,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/isis.png',
      width: size,
    );
  }
}
