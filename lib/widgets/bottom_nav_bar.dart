import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: Icon(Icons.home),
          label: 'Anasayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profilim',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Katalog',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Takvim',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color.fromARGB(255, 173, 210, 138),
      onTap: (index) {
        _onItemTapped(index);
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/Anasayfa');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/Profilim');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/Katalog');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/Takvim');
        break;
      default:
        // Belirtilen index ile eşleşen bir case bulunamazsa, varsayılan olarak '/' yani anasayfaya yönlendir.
        Navigator.pushReplacementNamed(context, '/');
        break;
    }
  }
}
