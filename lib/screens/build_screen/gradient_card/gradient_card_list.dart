import 'package:flutter/material.dart';
import 'package:tobeto_app/screens/build_screen/gradient_card/gradient_card.dart';

class GradientCardList extends StatefulWidget {
  const GradientCardList({Key? key}) : super(key: key);

  @override
  _GradientCardListState createState() => _GradientCardListState();
}

class _GradientCardListState extends State<GradientCardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          GradientCard(
            colorcard1: Colors.purple.shade200,
            colorcard2: Colors.purple.shade400,
            colorcard3: Colors.purple.shade800,
            baslik: "Profil Oluştur",
            onPressed: () {},
          ),
          GradientCard(
            colorcard1: Colors.indigo.shade800,
            colorcard2: Colors.indigo.shade500,
            colorcard3: Colors.indigo.shade300,
            baslik: "Kendini değerlendir",
            onPressed: () {},
          ),
          GradientCard(
            colorcard1: Colors.pinkAccent.shade400,
            colorcard2: Colors.pinkAccent.shade200,
            colorcard3: Colors.pinkAccent.shade100,
            baslik: "Öğrenmeye başla",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
