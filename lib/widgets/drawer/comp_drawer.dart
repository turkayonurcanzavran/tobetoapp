import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/calendar_screen.dart';
import 'package:tobeto_app/screens/catalog_screen.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/profile_screen.dart';
import 'package:tobeto_app/screens/reviews_screen.dart';
import 'package:tobeto_app/screens/tobeto_screen.dart';

class CompDrawer extends StatelessWidget {
  const CompDrawer({Key? key}) : super(key: key);

  PageRouteBuilder _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: ListView(
        children: <Widget>[
          FractionalTranslation(
            translation: Offset(-0.2, 0.9),
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
                    Navigator.of(context)
                        .push(_createRoute(const HomeScreen()));
                  },
                ),
              ),
              // Diğer sayfalar için aynı yapıyı tekrarlayın
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListTile(
                  title: Text(
                    'Değerlendirmeler',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(_createRoute(const ReviewsScreen()));
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
                    Navigator.of(context)
                        .push(_createRoute(const ProfileScreen()));
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
                    Navigator.of(context)
                        .push(_createRoute(const CatalogScreen()));
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
                    Navigator.of(context)
                        .push(_createRoute(const CalendarScreen()));
                  },
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      contentPadding: EdgeInsets.only(left: 16, right: 211),
                      leading: Text(
                        'Tobeto',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      title: const Icon(Icons.home_outlined,
                          color: Color.fromARGB(255, 6, 240, 213)),
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const TobetoScreen()));
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
            ],
          ),
        ],
      ),
    );
  }
}
