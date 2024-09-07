import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.color,
    required this.fontSize,
     this.fontFamily,
    required this.fontWeight, required this.text,
  });
  final String text;
  final Color color;
  final double fontSize;
  final String? fontFamily;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight),
    );
  }
}
