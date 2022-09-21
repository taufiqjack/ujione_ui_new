import 'package:e_learning_uji/ui/view/home.dart';
import 'package:e_learning_uji/ui/view/nilai_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IndexView extends StatefulWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  _IndexViewState createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int _selectedIndex = 0;

  final List widgetOptions = [
    const HomeView(),
    const NilaiView(),
    const Text('Ini Jadwal'),
    const Text('Ini Leaderboard'),
    const Text('Ini Akun'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icon_beranda_nonactive.png',
              ),
              activeIcon: Image.asset(
                'assets/images/icon_beranda_active.png',
              ),
              label: 'Beranda',
              backgroundColor:
                  _selectedIndex == 0 ? Colors.black : const Color(0xFF32B770)),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_nilai_nonactive.png',
            ),
            activeIcon: Image.asset(
              'assets/images/icon_nilai_active.png',
            ),
            label: 'Nilai',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_jadwal_nonactive.png',
            ),
            activeIcon: Image.asset(
              'assets/images/icon_jadwal_active.png',
            ),
            label: 'Jadwal',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_leaderboard_nonactive.png',
            ),
            activeIcon: Image.asset(
              'assets/images/icon_leaderboard_active.png',
            ),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/icon_akun_nonactive.png',
            ),
            activeIcon: Image.asset(
              'assets/images/icon_akun_active.png',
            ),
            label: 'Akun',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF32B770),
        onTap: _onItemTapped,
        iconSize: 20,
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
