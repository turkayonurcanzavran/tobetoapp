import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/calendar_screen.dart';
import 'package:tobeto_app/screens/catalog_screen.dart';
import 'package:tobeto_app/screens/home_screen.dart';
import 'package:tobeto_app/screens/login_screen/login_screen.dart';
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
      child: Stack(
        children: [
          Image.asset(
            "assets/image/tobeto-logo.png",
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 208, 164, 233),
                  Color.fromRGBO(96, 32, 160, 1)
                ],
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.5, sigmaY: 5),
            child: Image.asset("assets/image/kodlama.png", scale: 5),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
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
                    // Diğer ListTile'ları buraya ekleyin
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const HomeScreen()));
                      },
                      title: Text(
                        'Anasayfa',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const ReviewsScreen()));
                      },
                      title: Text(
                        'Değerlendirmeler',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const ProfileScreen()));
                      },
                      title: Text(
                        'Profilim',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const CatalogScreen()));
                      },
                      title: Text(
                        'Katalog',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const CalendarScreen()));
                      },
                      title: Text(
                        'Takvim',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const TobetoScreen()));
                      },
                      leading: Icon(Icons.home_outlined,
                          color: Color.fromARGB(255, 6, 240, 213)),
                      title: Text(
                        'Tobeto',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(_createRoute(const ProfileScreen()));
                      },
                      title: const UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 208, 164, 233),
                              Color.fromRGBO(96, 32, 160, 1)
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(3.0, 3.0),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        accountName: Text('Kullanıcı ADI'),
                        accountEmail: Text('kullanıcı.adı@gmail.com'),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/image/kullanıcı.png"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: Text('© 2022 Tobeto', style: TextStyle()),
                      ),
                    ),
                    const SizedBox(height: 30),
                    IconButton(
                      icon: Icon(
                        Icons.logout_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                          (route) => false,
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
