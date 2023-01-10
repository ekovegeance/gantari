import 'package:flutter/material.dart';
import 'package:gantari/akun.dart';
import 'package:gantari/beranda.dart';
import 'package:gantari/brand.dart';
import 'package:gantari/kategori.dart';

class Gantari extends StatefulWidget {
  const Gantari({super.key});

  @override
  State<Gantari> createState() => _GantariState();
}

class _GantariState extends State<Gantari> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Beranda(),
    Kategori(),
    Brand(),
    Akun()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: 'Kategori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'Brand',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
      ),
    );
  }
}
