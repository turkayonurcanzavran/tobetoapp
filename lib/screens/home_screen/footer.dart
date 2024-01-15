import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
    );
  }
}
