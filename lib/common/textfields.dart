import 'package:flutter/material.dart';

Widget textFields(
    {TextEditingController? controller,
    String hintText = '',
    Widget? prefixIcon,
    Color color = Colors.white,
    double? w,
    TextInputType? keyboardType,
    int? maxLines,
    Widget? suffixIcon}) {
  return SizedBox(
      width: w,
      child: TextFormField(
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          filled: true,
          hintText: hintText,
          fillColor: color,
          contentPadding: const EdgeInsets.fromLTRB(20.0, -0.1, 20.0, 0.1),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.pink),
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ));
}
