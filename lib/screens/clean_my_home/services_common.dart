import 'package:flutter/material.dart';
import 'package:greencity/utils/colors.dart';

Widget containerServices({double? h, double? w, Widget? child}) {
  return Container(
    height: h,
    width: w,
    decoration: BoxDecoration(
        color: textfieldgrey,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(22)),
    child: child,
  );
}

Widget row({
  bool? value,
  Function(bool?)? onChanged,
  String textDay = '',
  String textTime = '',
  double? width,
}) {
  return Row(
    children: [
      Checkbox(value: value, onChanged: onChanged),
      Text(
        textDay,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      SizedBox(width: width),
      const Text(
        '|',
        style: TextStyle(fontSize: 20, color: Colors.black54),
      ),
      const SizedBox(width: 10),
      Text(
        textTime,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      )
    ],
  );
}
