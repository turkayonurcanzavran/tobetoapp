import 'package:flutter/material.dart';

class MyHeaderDriver extends StatefulWidget {
  const MyHeaderDriver({Key? key}) : super(key: key);

  @override
  _MyHeaderDriverState createState() => _MyHeaderDriverState();
}

class _MyHeaderDriverState extends State<MyHeaderDriver> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/image/kullanici.png"),
              ),
            ),
          ),
          Text(
            "Eslem Özlük",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white),
          ),
          Text(
            "ozlukeslem@gmail.com",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
