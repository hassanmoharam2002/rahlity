//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Color primary = const Color(0xff687daf);

//textColor==Color(0xff3b3b3b);
class Styles {
  static Color primaryColor = primary;
  static Color textColor = Colors.grey.shade700;
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xfff37867);
  static Color kakiColor = const Color(0XFFd2bdb6);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headlinestyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headlinestyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headlinestyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
