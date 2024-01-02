import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  const SquareTile({Key? key, required this.imagePath, required this.onTap})
      : super(key: key);

  final String imagePath;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border:
                  Border.all(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(16)),
          child: Image.asset(
            imagePath,
            height: 60,
          )),
    );
    // bu sayfada apple ve google logolarının yerleşimi için box oluşturuldu ve constractor olarak image asset içine  lo
  }
}
