import 'package:flutter/material.dart';
import 'package:weather_api/core/util/fonts/app_fonts.dart';

class IconedTextWidget extends StatelessWidget {
  const IconedTextWidget(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconColor,
      required this.textColor});
  final String text;
  final IconData icon;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: textColor,
              fontFamily: AppFonts.gabriolaFont),
        )
      ],
    );
  }
}
