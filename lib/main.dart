import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/calendar_screen.dart';
import 'package:tobeto_app/screens/catalog_screen.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/login_screen.dart';
import 'package:tobeto_app/screens/profile_screen.dart';
import 'package:tobeto_app/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Diğer MaterialApp özellikleri
      routes: {
        '/Anasayfa': (context) => HomeScreen(),
        '/Profilim': (context) => ProfileScreen(),
        '/Katalog': (context) => CatalogScreen(),
        '/Takvim': (context) => CalendarScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: LoginScreen(),
      // Diğer MaterialApp özellikleri
    );
  }
}
