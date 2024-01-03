import 'package:flutter/material.dart';

import 'package:tobeto_app/homescreen/text_styles.dart';

import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';

import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
          ),
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
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const TextStyles(
            textSyle1: "TOBETO",
            textStyle2: "'ya hoş geldin",
            textsSyle3: "Eslem Özlük",
            textsSyle4:
                "Yeni nesil öğrenme deneyimi ile Tobeto kariyer yolculuğunda senin yanında!",
          ),
        ],
      ),
    );
  }
}
