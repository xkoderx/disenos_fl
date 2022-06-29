import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Colors.white,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: 'Calendario'),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Gráfica'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Usuarios'),
      ],
    );
  }
}
