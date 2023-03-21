import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String normalText;
  final double fontSize;
  final bool isGray;
  final bool isBold;

  const CustomText({
    super.key,
    required this.normalText,
    required this.fontSize,
    required this.isGray,
    required this.isBold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(normalText);
  }
}
