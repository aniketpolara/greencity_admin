import 'package:flutter/material.dart';

Widget wingnameContainer({
  double? h,
  double? w,
  double margintop = 8,
  double marginbottom = 8,
  double marginleft = 8,
  double marginright = 8,
  double padding = 5,
  Color color = Colors.white,
  Color borderColor = Colors.black12,
  Widget? child,
  double radius = 7,
}) {
  return Container(
    height: h,
    width: w,
    alignment: Alignment.center,
    margin: EdgeInsets.only(
        bottom: marginbottom,
        top: margintop,
        left: marginleft,
        right: marginright),
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor)),
    child: child,
  );
}

Widget textButton({
  Function()? onPressed,
  required Widget child,
  double? fontSize,
  String text = '',
  FontWeight? fontWeight,
  Color color = Colors.black,
}) {
  return TextButton(onPressed: onPressed, child: child);
}

Widget gesturedetector({Widget? child, Function()? onTap}) {
  return GestureDetector(onTap: onTap, child: child);
}
