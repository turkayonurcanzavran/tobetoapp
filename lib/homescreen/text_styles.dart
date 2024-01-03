import 'package:flutter/material.dart';

class TextStyles extends StatelessWidget {
  const TextStyles({
    Key? key,
    required this.textSyle1,
    required this.textStyle2,
    required this.textsSyle3,
    required this.textsSyle4,
  }) : super(key: key);

  final String textSyle1;
  final String textStyle2;
  final String textsSyle3;
  final String textsSyle4;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textSyle1,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              Text(
                textStyle2,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 34,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
          Text(
            textsSyle3,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 34,
                  fontWeight: FontWeight.normal,
                ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              textsSyle4,
              textAlign: TextAlign.center,
              softWrap: true,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
