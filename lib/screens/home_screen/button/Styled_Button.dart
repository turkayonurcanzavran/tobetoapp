import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isButtonPressed;
  final String buttonText;

  StyledButton({
    Key? key,
    required this.onPressed,
    required this.isButtonPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isButtonPressed
            ? Theme.of(context).colorScheme.onSecondary
            : Theme.of(context).colorScheme.onPrimary,
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
      ),
      child: Text(buttonText),
    );
  }
}
