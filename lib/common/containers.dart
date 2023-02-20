import 'package:flutter/material.dart';

// member valu white container
Widget membercontainer({
  double? h,
  double? w,
  double margintop = 0,
  double marginbottom = 0,
  double marginleft = 0,
  double marginright = 0,
  double paddingtop = 0,
  double paddingBottpm = 0,
  double paddingLeft = 0,
  double paddingRight = 0,
  double blurRadius = 0,
  double radiusBottomLeft = 0,
  double radiusTopLeft = 0,
  double radiusTopRight = 0,
  double radiusBottomRight = 0,
  double spreadRadius = 0,
  Offset offset = Offset.zero,
  Color color = Colors.white,
  AlignmentGeometry? transformAlignment,
  Color borderColor = Colors.white,
  Color radiusColor = Colors.white,
  Widget? child,
}) {
  return Container(
    height: h,
    width: w,
    transformAlignment: transformAlignment,
    margin: EdgeInsets.only(
        bottom: marginbottom,
        top: margintop,
        left: marginleft,
        right: marginright),
    padding: EdgeInsets.only(
        bottom: paddingBottpm,
        top: paddingtop,
        left: paddingLeft,
        right: paddingRight),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radiusBottomLeft),
          bottomRight: Radius.circular(radiusBottomRight),
          topLeft: Radius.circular(radiusTopLeft),
          topRight: Radius.circular(radiusTopRight)),
      border: Border.all(color: borderColor),
      boxShadow: [
        BoxShadow(
            offset: offset,
            color: radiusColor,
            blurRadius: blurRadius,
            blurStyle: BlurStyle.solid,
            spreadRadius: spreadRadius),
      ],
    ),
    child: child,
  );
}

Widget containerHome({
  double? h,
  double? w,
  double margintop = 0,
  double marginbottom = 0,
  double marginleft = 0,
  double marginright = 0,
  double paddingleft = 0,
  double paddingright = 0,
  double paddingtop = 0,
  double paddingbottom = 0,
  double dx = 0,
  double dy = 0,
  double blurRadius = 0,
  double radiusBottomLeft = 0,
  double radiusTopLeft = 0,
  double radiusTopRight = 0,
  double radiusBottomRight = 0,
  double spreadRadius = 0,
  Color shadowColor = Colors.white,
  Color color = Colors.white,
  Color borderColor = Colors.white,
  Widget? child,
}) {
  return Container(
    height: h,
    width: w,
    margin: EdgeInsets.only(
        bottom: marginbottom,
        top: margintop,
        left: marginleft,
        right: marginright),
    padding: EdgeInsets.only(
        bottom: paddingbottom,
        top: paddingtop,
        left: paddingleft,
        right: paddingright),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radiusBottomLeft),
          bottomRight: Radius.circular(radiusBottomRight),
          topLeft: Radius.circular(radiusTopLeft),
          topRight: Radius.circular(radiusTopRight)),
      border: Border.all(color: borderColor),
      boxShadow: [
        BoxShadow(
            color: shadowColor,
            offset: Offset(dx, dy),
            blurRadius: blurRadius,
            blurStyle: BlurStyle.solid,
            spreadRadius: spreadRadius),
      ],
    ),
    child: child,
  );
}

Widget container({
  IconData? icon,
  double h = 0,
  double w = 0,
  double margin = 10,
  double topright = 0,
  double topleft = 0,
  double bottemright = 0,
  double p = 0,
  double paddingtop = 0,
  double paddingBottpm = 0,
  double paddingLeft = 0,
  double paddingRight = 0,
  double bottemleft = 0,
  double spreadRadius = 0,
  Color shadowColor = Colors.white,
  Color color = Colors.transparent,
  double dx = 0,
  double dy = 0,
  double blurRadius = 0,
  Widget? child,
  double width = 0,
  ColorFilter? colorFilter,
  Color color1 = Colors.transparent,
}) {
  return Container(
    height: h,
    width: w,
    padding: EdgeInsets.only(
        bottom: paddingBottpm,
        top: paddingtop,
        left: paddingLeft,
        right: paddingRight),
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
      color: color,
      border: Border.all(color: color1, width: width),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(topright),
        bottomLeft: Radius.circular(bottemleft),
        topLeft: Radius.circular(topleft),
        bottomRight: Radius.circular(bottemright),
      ),
      boxShadow: [
        BoxShadow(
            color: shadowColor,
            offset: Offset(dx, dy),
            blurRadius: blurRadius,
            blurStyle: BlurStyle.solid,
            spreadRadius: spreadRadius),
      ],
    ),
    child: child ??
        Icon(
          icon,
          size: 40,
        ),
  );
}
