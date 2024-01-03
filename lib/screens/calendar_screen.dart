import 'package:flutter/material.dart';
import 'package:tobeto_app/widgets/drawer/comp_drawer.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 146, 231, 8),
      appBar: AppBar(
        title: Text('Takvim'),
      ),
      drawer: CompDrawer(),
      body: Container(
          // Sayfanın içeriğini buraya ekleyebilirsin
          ),
    );
  }
}
