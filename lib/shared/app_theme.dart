import 'package:flutter/material.dart';

class BYAppTheme {
  /* 1.共有属性 */
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;
  static const double xlargeFontSize = 28;
  static final Color norTextColors = Colors.red;
  static final Color darkTextColors = Colors.red;

  /* 模式 */
  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.indigo,
      accentColor: Colors.amber,
      fontFamily: 'Montserrat',
      /* 背景颜色 */
      canvasColor: Color(0xffeae8e7),
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: smallFontSize, color: Colors.black54),
          headline2: TextStyle(fontSize: normalFontSize, color: Colors.black54),
          headline3: TextStyle(fontSize: largeFontSize, color: Colors.black54),
          headline4: TextStyle(fontSize: largeFontSize, color: Colors.black54),
          bodyText1: TextStyle(fontSize: bodyFontSize, color: Colors.black54)));

  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.black12,
      textTheme: TextTheme(
          bodyText1:
              TextStyle(fontSize: normalFontSize, color: darkTextColors)));
}
