import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/info_screen.dart';

import 'package:tobeto_app/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        darkTheme: darkMode,
        home: InfoScreen());
  }
}
