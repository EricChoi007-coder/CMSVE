import 'package:flutter/material.dart';

class CMSAppTheme {
  // 1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;
  static const double xlargeFontSize = 30;


  // 2.普通模式
  static final Color norTextColors = Colors.red;

  static final ThemeData norTheme = ThemeData(
      primarySwatch: Colors.blueGrey,
      accentColor: Colors.blueAccent,
      canvasColor: Color.fromRGBO(255, 254, 222, 1),
      textTheme: TextTheme(
    //    bodyMedium: TextStyle(fontSize: bodyFontSize),
        bodySmall: TextStyle(fontSize: smallFontSize, color: Colors.black87),
        bodyMedium: TextStyle(fontSize: normalFontSize, color: Colors.black87),
        bodyLarge: TextStyle(fontSize: largeFontSize, color: Colors.black87),
       // bodyLarge: TextStyle(fontSize: xlargeFontSize, color: Colors.black87, fontWeight: FontWeight.w400),
      )
  );


  // 3.暗黑模式
  static final Color darkTextColors = Colors.green;

  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: normalFontSize, color: darkTextColors)
      )
  );
}