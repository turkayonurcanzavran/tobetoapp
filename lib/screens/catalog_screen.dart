import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';
import 'package:tobeto_app/widgets/bottom_nav_bar.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
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
      body: Container(
        child: Text("katalog"),
        // Sayfanın içeriğini buraya ekleyebilirsin
      ),
       bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
