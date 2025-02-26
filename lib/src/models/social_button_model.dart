import 'package:flutter/material.dart';
enum Social {
  google,
  facebook,
  apple,
  twitter
}

class SocialButtonModel {
  final Social type;
  final String label;
  final String svgIconPath;
  final Color color;
  final Color textColor;
  Color? iconColor;

  SocialButtonModel({
    required this.type,
    required this.label,
    required this.svgIconPath,
    required this.color,
    required this.textColor,
    this.iconColor
  });
}
