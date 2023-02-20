import 'package:flutter/material.dart';

Widget textfieldPass({
  String? hintText,
  InputBorder? disabledBorder,
  InputBorder? errorBorder,
  InputBorder? focusedBorder,
  InputBorder? enabledBorder,
  Widget? prefixIcon,
  double? fontSize,
  Color prefixIconColor = Colors.transparent,
  Color color = Colors.transparent,
}) {
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
      disabledBorder: disabledBorder,
      errorBorder: errorBorder,
      focusedBorder: focusedBorder,
      enabledBorder: enabledBorder,
      prefixIcon: prefixIcon,
      prefixIconColor: prefixIconColor,
    ),
  );
}
