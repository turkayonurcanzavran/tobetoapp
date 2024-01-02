import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/login_screen.dart';
import 'package:tobeto_app/theme/theme.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: lightMode,
    darkTheme: darkMode,
    home: LoginScreen(),
  ));
}
