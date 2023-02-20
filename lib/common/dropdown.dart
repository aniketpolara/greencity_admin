import 'package:flutter/material.dart';
import 'package:greencity/utils/colors.dart';

Widget dropdownButton({
  List<DropdownMenuItem<dynamic>>? items,
  Function(dynamic)? onChanged,
  dynamic value,
  Widget? hinttext,
}) {
  return DropdownButton(
    hint: hinttext,
    alignment: Alignment.center,
    value: value,
    items: items,
    menuMaxHeight: 250,
    onChanged: onChanged,
    itemHeight: kMinInteractiveDimension,
    dropdownColor: colortextfields,
    elevation: 0,
  );
}
