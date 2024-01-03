import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/calendar_screen.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/tobeto_screen.dart'; // Eksik import ekledim

class CompDrawer extends StatelessWidget {
  const CompDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 100, top: 60, left: 10),
            child: Image.asset("assets/image/tobeto-logo.png", scale: 2),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'Anasayfa',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const HomeScreen())); // HomeScreen ekranı import edildi
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'Anasayfa',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const TobetoScreen())); // HomeScreen ekranı import edildi
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'TAKVİM',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const CalendarScreen())); // HomeScreen ekranı import edildi
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'Anasayfa',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const HomeScreen())); // HomeScreen ekranı import edildi
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListTile(
              title: Text(
                'Anasayfa',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        const HomeScreen())); // HomeScreen ekranı import edildi
              },
            ),
          ),
        ], // ListView çocuklarını kapat
      ),
    );
  }
}
