import 'package:flutter/material.dart';
import 'package:greencity/common/image.dart';

Widget gestureDetector(
    {Function()? onTap, double? h, double? w, String images = ''}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
        height: h,
        width: w,
        child: image(color: Colors.black54, image: images)),
  );
}
