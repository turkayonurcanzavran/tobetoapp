import 'package:flutter/material.dart';

import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:tobeto_app/widgets/speed_dial/SpeedDialWidget.dart';
import 'package:tobeto_app/card/gradient_card.dart';
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
          Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),

          //""""""""""""""""""""""""""""""""

          SizedBox(height: 20),
          Card(
            elevation: 5,
            color: const Color.fromARGB(255, 230, 230, 230),
            child: SizedBox(
              width: 350,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  children: [
                    Text(
                      "İstanbul Kodluyor Bilgilendirme",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(right: 290, top: 75), //
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sınavlarım",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                // sınavlarım kısmı
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              // Kart tıkla
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              color: Colors.white,
              child: Container(
                width: 150,
                height: 190,
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight, // hizalama değeri
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Herkes için Kodlama 2C Değerlendirme Sınavı",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Herkes İçin",
                            style: TextStyle(
                              color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color ??
                                  Colors.grey[700],
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Kodlama - 2C",
                            style: TextStyle(
                              color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.color ??
                                  Colors.grey[700],
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(Icons.timer_outlined,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 20),
                              SizedBox(width: 8.0),
                              const Text(
                                "45 Dakika",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset("assets/image/converted.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          GradientCard(
            colorcard1: Colors.purple.shade200,
            colorcard2: Colors.purple.shade400,
            colorcard3: Colors.purple.shade800,
            baslik: "Profilini Oluştur",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          GradientCard(
            colorcard1: Colors.indigo.shade800,
            colorcard2: Colors.indigo.shade500,
            colorcard3: Colors.indigo.shade300,
            baslik: "Kendini Değerlendir",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          GradientCard(
            colorcard1: Colors.pinkAccent.shade400,
            colorcard2: Colors.pinkAccent.shade200,
            colorcard3: Colors.pinkAccent.shade100,
            baslik: "Öğrenmeye Başla",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Card(
            child: Container(
              width: 500,
              height: 150,
              color: Theme.of(context).colorScheme.primary,
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(-0.8, -0.8),
                    child: Image.asset(
                      "assets/image/tobeto-logo_beyaz_2.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.7, -0.4),
                    child: ElevatedButton(
                      onPressed: () {
                        // işlem ekle
                      },
                      child: const Text(
                        "Bize Ulaşın",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.0, 0.5),
                    child: Text(
                      "© 2022 Tobeto",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBarWidget(), //botomnavi aman unutma
    );
  }
}
