import 'package:flutter/material.dart';
import 'package:greencity/utils/colors.dart';

Widget noticeContainer(
  Widget? child,
  double? h,
  double? w, {
  double marginTop = 0,
  double marginBottom = 0,
  double marginLeft = 0,
  double marginRight = 0,
}) {
  return Container(
    height: h,
    width: w,
    margin: EdgeInsets.only(
        bottom: marginBottom,
        top: marginTop,
        left: marginLeft,
        right: marginRight),
    decoration: BoxDecoration(
        color: textfieldgrey,
        boxShadow: const [
          BoxShadow(
              offset: Offset(0.5, 2),
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 0.5)
        ],
        borderRadius: BorderRadius.circular(22)),
    child: child,
  );
}

Widget textFieldNotice({
  TextEditingController? controller,
  String hintText = '',
  Color color = Colors.white,
  double? w,
}) {
  return TextFormField(
    maxLines: 10,
    decoration: InputDecoration(
      filled: true,
      disabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      hintText: hintText,
      fillColor: color,
      contentPadding: const EdgeInsets.fromLTRB(20.0, 20, 20.0, 0.1),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
  );
}
