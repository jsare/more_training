import 'package:flutter/material.dart';

enum AppTheme {
  greenLight,
  greenDark,
  redLight,
  redDark;
}

final appThemeData = {
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(color: Colors.green),
    primaryColor: Colors.green,
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(color: Colors.green[700]),
    primaryColor: Colors.green[700],
  ),
  AppTheme.redLight: ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(color: Colors.red),
    primaryColor: Colors.red,
  ),
  AppTheme.redDark: ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(color: Colors.red[700]),
    primaryColor: Colors.red[700],
  ),
};
