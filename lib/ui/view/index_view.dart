import 'package:flutter/cupertino.dart';
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
    const Text('Ini Dahsboard'),
    const Text('Ini Nilai'),
    const Text('Ini Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: const Color(0xFFE8F7EF),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              width: double.infinity,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/ava.png',
                      ),
                      radius: 50.0,
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, right: 0, left: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Jack',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'SMA Negeri 1 Yogyakarta',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/start_level.png',
                              ),
                              const SizedBox(
                                width: 9,
                              ),
                              const Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Image.asset(
                                'assets/images/triangle.png',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 1,
                                height: 16,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/chart.png',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '87',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Icon(
                      Icons.notifications,
                      color: Color(0xFF1FB790),
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                'E-learning',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'assets/images/english_course.png',
                          height: 100,
                          width: 150,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          10.0,
                        )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image.asset(
                          'assets/images/islamic_course.png',
                          fit: BoxFit.fill,
                          width: 150,
                          height: 100,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          10.0,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/beranda_grey.png',
            ),
            label: 'Beranda',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/nilai.png',
            ),
            activeIcon: Image.asset(
              'assets/images/nilai.png',
              color: Colors.black,
            ),
            label: 'Nilai',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/jadwal.png',
            ),
            activeIcon: Image.asset(
              'assets/images/jadwal.png',
              color: Colors.black,
            ),
            label: 'Jadwal',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/leaderboard.png',
            ),
            activeIcon: Image.asset(
              'assets/images/leaderboard.png',
              color: Colors.black,
            ),
            label: 'Nilai',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/akun.png',
            ),
            activeIcon: Image.asset(
              'assets/images/akun.png',
              color: Colors.black,
            ),
            label: 'Akun',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
