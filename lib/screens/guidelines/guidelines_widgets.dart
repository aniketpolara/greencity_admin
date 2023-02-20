import 'package:flutter/material.dart';

Widget textFieldsGuidelines({
  TextEditingController? controller,
  String hintText = '',
  Color color = Colors.white,
  double? w,
}) {
  return SizedBox(
      width: w,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          //disabledBorder: InputBorder.none,
          // focusedBorder: InputBorder.none,
          //enabledBorder: InputBorder.none,
          //errorBorder: InputBorder.none,
          hintText: hintText,
          fillColor: color,
          contentPadding: const EdgeInsets.fromLTRB(20.0, -0.1, 20.0, 0.1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(color: Colors.white)),
        ),
      ));
}
