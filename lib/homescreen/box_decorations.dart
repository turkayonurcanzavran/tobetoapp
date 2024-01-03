import 'package:flutter/material.dart';

class BoxDecorations extends StatelessWidget {
  const BoxDecorations(
      {Key? key, required this.width, required this.height, required this.text})
      : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 34,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ));
  }
}
