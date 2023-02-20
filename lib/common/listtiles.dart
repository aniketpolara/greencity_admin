import 'package:flutter/material.dart';

Widget listtile({
  Widget? leading,
  Widget? title,
  Widget? trailing,
  Widget? subtitle,
}) {
  return ListTile(
    title: title,
    leading: leading,
    trailing: trailing,
    subtitle: subtitle,
  );
}
