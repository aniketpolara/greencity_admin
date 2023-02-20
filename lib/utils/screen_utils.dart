import 'package:flutter/widgets.dart';

class ScreenUtils {
  static double h = 0;
  static double w = 0;
  static setValue(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
  }
}
