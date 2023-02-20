import 'package:flutter/material.dart';

Widget text(
    {String text = '',
    double? fontsize,
    FontWeight? fontWeight,
    Color? color}) {
  return Text(
    text,
    style: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontsize),
  );
}
