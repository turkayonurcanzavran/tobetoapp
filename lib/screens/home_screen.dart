import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "buralarda yar seven mutlaka verem olur",
              style: TextStyle(fontSize: 15, color: Colors.black),
            )),
      ),
    );
  }
}
