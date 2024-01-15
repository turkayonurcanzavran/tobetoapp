import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/build_screen/Custom_SearchBar.dart';

import 'package:tobeto_app/screens/build_screen/build_banner.dart';
import 'package:tobeto_app/screens/build_screen/footer.dart';
import 'package:tobeto_app/screens/build_screen/gradient_card/gradient_card_list.dart';
import 'package:tobeto_app/screens/build_screen/welcome_text.dart';

import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';

import 'package:tobeto_app/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/tobeto-white-logo.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      endDrawer: const CompDrawer(),
      floatingActionButton: buildSpeedDial(context),
      bottomNavigationBar: BottomNavBarWidget(),
      body: ListView(
        children: [
          WelcomeText(),
          CustomSearchBar(),
          BuildBanner(),
          GradientCardList(),
          Footer(),
        ],
      ),
    );
  }
}
