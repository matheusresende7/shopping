import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData get defaultTheme => ThemeData(
    primaryColor: Color(0xff060056),
    hoverColor: Colors.grey[600],
    primaryColorDark: Color(0xff0000cc),
    primaryColorLight: Color(0xff00BFFF),
    accentColor: Colors.white,
    backgroundColor: Colors.white,
    disabledColor: Colors.grey[400],
    indicatorColor: Colors.green,
    errorColor: Colors.red,
  );

  static ThemeData get darkTheme => ThemeData(
    primaryColor: Colors.grey[600],
    hoverColor: Color(0xff060056),
    primaryColorDark: Colors.grey[800],
    primaryColorLight: Colors.grey[600],
    accentColor: Colors.white,
    backgroundColor: Colors.grey[900],
    disabledColor: Colors.grey[400],
    indicatorColor: Colors.green,
    errorColor: Colors.red,
  );

}