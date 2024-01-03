import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    )..addStatusListener((status) {
        //
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speed Dial İcon Menüsü'),
      ),
      body: Center(
        child: Text(
          'Sayfa içeriği',
          style: TextStyle(fontSize: 18),
        ),
      ), floatingActionButton: SpeedDial(
        icon: Icons.message,
        activeIcon: Icons.message_outlined,
        elevation: 3.0,
        backgroundColor: Color.fromRGBO(153, 51, 255, 1),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        spacing: 10.0,
        curve: Curves.easeInOutCubic,
        children: [
          SpeedDialChild(
            child: Icon(Icons.mail),
            backgroundColor: const Color.fromRGBO(153, 51, 255, 1),
            onTap: () => print('Mail tıklandı'),
          ),
          SpeedDialChild(
            child: Icon(Icons.phone),
            backgroundColor: Colors.green,
            onTap: () => print('whatsapp tıklandı'), //
          ),
        ],
      ),
    );
  }
}
