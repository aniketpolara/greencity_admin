import 'package:flutter/material.dart';

Widget gradiantContainer({
  Widget? child,
  double? w,
  Color color1 = Colors.transparent,
  Color color2 = Colors.transparent,
}) {
  return Container(
    width: 100,
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color1, color2])),
    child: child,
  );
}
