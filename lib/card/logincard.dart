import 'package:flutter/material.dart';
import 'dart:ui';

class Logincard extends StatelessWidget {
  const Logincard(
      {Key? key,
      required this.theHeight,
      required this.theChild,
      required this.theWidth})
      : super(key: key);
  final theChild;
  final double theWidth;
  final double theHeight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: theWidth,
        height: theHeight,
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            //gradient effect
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(30),
                  border: Border.all(
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.13)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color.fromARGB(255, 255, 255, 255)
                            .withOpacity(0.15),
                        const Color.fromARGB(255, 255, 255, 255)
                            .withOpacity(0.05)
                      ])),
            ),
            Center(
              child: theChild,
            ),

            //child-top layer
          ],
        ),
      ),
    );
  }
}
