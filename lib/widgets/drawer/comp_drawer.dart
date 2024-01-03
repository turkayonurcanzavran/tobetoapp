import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/calendar_screen.dart';
import 'package:tobeto_app/screens/catalog_screen.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/profile_screen.dart';
import 'package:tobeto_app/screens/reviews_screen.dart';
import 'package:tobeto_app/screens/tobeto_screen.dart';

class CompDrawer extends StatelessWidget {
  const CompDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 130, top: 10, left: 10),
            child: Image.asset("assets/image/tobeto-logo.png", scale: 2),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 00, left: 10),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);

                    //basınca drawer ı kapat
                  },
                ),
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
                    'Değerlendirmeler',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ReviewsScreen())); //
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text(
                    'Profilim',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProfileScreen())); //
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text(
                    'Katalog',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CatalogScreen())); //
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text(
                    'Takvim',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const CalendarScreen())); // HomeScreen ekranı import edildi
                  },
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      title: Text(
                        'Tobeto',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      leading:
                          const Icon(Icons.home_outlined, color: Colors.grey),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                const CalendarScreen())); // tobeto ekranı import edilecek
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text('© 2022 Tobeto', style: TextStyle()),
                ),
              ),
            ], // ListView çocuklarını kapat
          ),
        ],
      ),
    );
  }
}
