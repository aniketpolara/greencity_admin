import 'package:flutter/material.dart';

Widget image({
  String image = '',
  double? h,
  double? w,
  Color color = Colors.transparent,
}) {
  return Image(
    image: AssetImage(image),
    height: h,
    width: w,
    color: color,
  );
}
