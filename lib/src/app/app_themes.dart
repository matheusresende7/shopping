import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData get defaultTheme => ThemeData(
    primaryColor: Color(0xff5a2d82),
    hoverColor: Colors.grey[600],
    primaryColorDark: Color(0xff370f53),
    primaryColorLight: Color(0xffc011f6),
    accentColor: Colors.white,
    backgroundColor: Colors.grey[100],
    disabledColor: Colors.grey[400],
    indicatorColor: Colors.green,
    errorColor: Colors.red,
  );

  static ThemeData get darkTheme => ThemeData(
    primaryColor: Colors.grey[600],
    hoverColor: Color(0xff5a2d82),
    primaryColorDark: Colors.grey[800],
    primaryColorLight: Colors.grey[600],
    accentColor: Colors.white,
    backgroundColor: Colors.grey[900],
    disabledColor: Colors.grey[400],
    indicatorColor: Colors.green,
    errorColor: Colors.red,
  );

}