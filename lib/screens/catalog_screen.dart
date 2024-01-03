import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';
import 'package:flutter/material.dart';
import 'package:tobeto_app/main.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 146, 231, 8),
      appBar: AppBar(
        title: Text('Katalog'),
      ),
      drawer: CompDrawer(),
      body: Container(
          // Sayfanın içeriğini buraya ekleyebilirsin
          ),
    );
  }
}
