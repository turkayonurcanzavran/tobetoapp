import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: ColorScheme.light(
      background: Color.fromARGB(255, 255, 255, 255),
      primary: Color.fromRGBO(111, 66, 193, 1),
      secondary: Color(0xFF00D29B)),
  fontFamily: 'Tinos',
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
      background: Color.fromARGB(255, 0, 0, 0),
      primary: Color.fromRGBO(70, 38, 120, 1),
      secondary: Color.fromARGB(255, 2, 71, 52)),
  fontFamily: 'Tinos',
);
