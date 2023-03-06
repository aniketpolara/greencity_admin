import 'package:flutter/material.dart';

Widget helpdeskContainer(
    {double? h,
    double? w,
    Color? color,
    Widget? child,
    double marginRight = 0}) {
  return Container(
    height: h,
    margin: EdgeInsets.only(left: marginRight),
    alignment: Alignment.center,
    width: w,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
    child: child,
  );
}
