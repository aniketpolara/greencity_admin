import 'package:flutter/material.dart';

Widget gradiantMaintenenceContainer({
  Widget? child,
  double? height,
  double? width,
  double? w,
  Color color1 = Colors.transparent,
  Color color2 = Colors.transparent,
}) {
  return Container(
    height: height,
    width: width,
    margin: const EdgeInsets.all(15),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color1, color2])),
    child: child,
  );
}
