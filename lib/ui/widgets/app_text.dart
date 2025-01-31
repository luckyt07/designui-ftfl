import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.label,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black, this.textAlign = TextAlign.center,
  });
  final String label;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        
      ),
    );
  }
}
