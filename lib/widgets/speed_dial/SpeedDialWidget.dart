import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

Widget buildSpeedDial(BuildContext context) {
  return SpeedDial(
    icon: Icons.message,
    activeIcon: Icons.message_outlined,
    elevation: 3.0,
    backgroundColor: Theme.of(context).colorScheme.primary,
    foregroundColor: Theme.of(context).colorScheme.background,
    overlayColor: const Color.fromARGB(255, 238, 238, 238),
    overlayOpacity: 0.5,
    spacing: 10.0,
    curve: Curves.easeInOutCubic,
    children: [
      SpeedDialChild(
        child: Icon(Icons.mail),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.background,
        onTap: () => print('Mail tıklandı'),
      ),
      SpeedDialChild(
        child: Icon(Icons.phone),
        backgroundColor: Colors.green,
        foregroundColor: Theme.of(context).colorScheme.background,
        onTap: () => print('WhatsApp tıklandı'),
      ),
    ],
  );
}
