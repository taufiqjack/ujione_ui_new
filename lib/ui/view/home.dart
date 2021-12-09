import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isLOading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFF1CAF60),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                )),
            width: double.infinity,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                CircleAvatar(
                  child: Image.asset(
                    'assets/images/icon_default_user.png',
                  ),
                  radius: 50.0,
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 0, left: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Justin Dias',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'SMA Negeri 1 Yogyakarta',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                GestureDetector(
                    child: Badge(
                      badgeContent: const Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      animationType: BadgeAnimationType.slide,
                      child: Image.asset(
                        'assets/images/icon_notification.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    onTap: () {
                      showGeneralDialog(
                        barrierLabel: 'label',
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        context: context,
                        pageBuilder: (_, __, ___) {
                          return Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 120,
                              width: 150,
                              margin: const EdgeInsets.only(
                                  top: 70, left: 12, right: 35),
                              child: Material(
                                type: MaterialType.transparency,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('Hallo Everyones!!'),
                                        Text('ini notifikasi'),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'View All',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.green),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, right: 50, left: 50),
            child: Container(
              height: 64,
              width: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icon_rank.png',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Text(
                            '6',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/triangle.png',
                          ),
                        ],
                      ),
                      const Text(
                        'Rank',
                        style: TextStyle(
                          color: Color(0xFFAFAFAF),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 2,
                    height: 32,
                    color: const Color(0xFFE6E6E6),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    'assets/images/icon_nilai_a.png',
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '82',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Nilai',
                        style: TextStyle(
                          color: Color(0xFFAFAFAF),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'E-learning Hari ini',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _toastMsg();
                                },
                                child: const Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    'Lihat Semua',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        height: 220,
                                        child: Card(
                                          color: const Color(0xFFE8F7EF),
                                          elevation: 2,
                                          semanticContainer: true,
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/icon_ilustrasi_mapel_bhs_indo.png',
                                                fit: BoxFit.cover,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 105,
                                          left: 4,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black54,
                                                    blurRadius: 2,
                                                    offset: Offset(
                                                      2,
                                                      2,
                                                    ))
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          height: 110,
                                          width: 195,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              top: 16,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Bahasa Indonesia',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xFF60C78F),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      'Bahasa Indonesia Dasar 1',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                    const SizedBox(
                                                      height: 12,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'assets/images/icon_book.png'),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        const Text(
                                                          '1 - 10',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xFFA4A4A4)),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Image.asset(
                                                          'assets/images/icon_time.png',
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        const Text(
                                                          '10:30 - 12:00',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xFFA4A4A4)),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    LinearPercentIndicator(
                                                        backgroundColor:
                                                            const Color(
                                                                0xFFA4DFBF),
                                                        animation: true,
                                                        animationDuration: 1000,
                                                        center: const Text(
                                                          '30%',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10),
                                                        ),
                                                        width: 150,
                                                        lineHeight: 12.0,
                                                        percent: 0.3,
                                                        progressColor:
                                                            const Color(
                                                                0xFF32B770)),
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 5,
                                                  ),
                                                  child: Expanded(
                                                    child:
                                                        CircularPercentIndicator(
                                                      radius: 35.0,
                                                      lineWidth: 5,
                                                      animation: true,
                                                      animationDuration: 1000,
                                                      percent: 30 / 100,
                                                      progressColor:
                                                          Colors.green,
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFBAE7CF),
                                                      center: const Text(
                                                        '30%',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFA4A4A4),
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Stack(
                                    children: [
                                      SizedBox(
                                        width: 200,
                                        height: 220,
                                        child: Card(
                                          color: const Color(0xFFE8F7EF),
                                          elevation: 2,
                                          semanticContainer: true,
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/images/icon_ilustrasi_mapel_kimia.png',
                                                fit: BoxFit.cover,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                            10.0,
                                          )),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 105, left: 4),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black54,
                                                    blurRadius: 2,
                                                    offset: Offset(
                                                      2,
                                                      2,
                                                    ))
                                              ],
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          height: 110,
                                          width: 195,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              top: 16,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Kimia',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xFF60C78F),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    const Text(
                                                      'Kimia Dasar 1',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 12,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Image.asset(
                                                            'assets/images/icon_book.png'),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        const Text(
                                                          '1 - 10',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xFFA4A4A4)),
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        Image.asset(
                                                          'assets/images/icon_time.png',
                                                        ),
                                                        const SizedBox(
                                                          width: 5,
                                                        ),
                                                        const Text(
                                                          '10:30 - 12:00',
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xFFA4A4A4)),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    LinearPercentIndicator(
                                                      animation: true,
                                                      width: 150,
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFA4DFBF),
                                                      center: const Text(
                                                        '60%',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      lineHeight: 12.0,
                                                      percent: 0.6,
                                                      animationDuration: 1000,
                                                      progressColor:
                                                          const Color(
                                                              0xFF32B770),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Expanded(
                                                    child:
                                                        CircularPercentIndicator(
                                                      radius: 35.0,
                                                      lineWidth: 5,
                                                      animation: true,
                                                      animationDuration: 1000,
                                                      percent: 60 / 100,
                                                      progressColor:
                                                          Colors.green,
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFBAE7CF),
                                                      center: const Text(
                                                        '60%',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFFA4A4A4),
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Ujian dan Tugas',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  _toastMsg();
                                },
                                child: const Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    'Lihat Semua',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFE8F7EF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 2,
                                        offset: Offset(
                                          2,
                                          2,
                                        )),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFA4DFBF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/images/icon_mapel_bahasa_indonesia.png',
                                        width: 24,
                                        height: 32,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Bahasa Indonesia',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/icon_notebook.png',
                                              height: 10,
                                              width: 10,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              'Ujian',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFA4A4A4)),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icon_date.png',
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  '10-12-2021',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFA4A4A4),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '10:30 - 12:00',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 110,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Lanjutkan',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color(0xFFFFC21C)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFE8F7EF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 2,
                                        offset: Offset(
                                          2,
                                          2,
                                        )),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFA4DFBF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/images/icon_mapel_biologi.png',
                                        width: 24,
                                        height: 32,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Biologi',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/icon_notebook.png',
                                              height: 10,
                                              width: 10,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              'Ujian',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFA4A4A4)),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icon_date.png',
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  '10-12-2021',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFA4A4A4),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '10:30 - 12:00',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 110,
                                          child: TextButton(
                                            onPressed: null,
                                            child: const Text(
                                              'Belum Tersedia',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color(0xFFE7E7E7)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFE8F7EF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 2,
                                        offset: Offset(
                                          2,
                                          2,
                                        )),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFB3CAFF),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/images/icon_mapel_bahasa_inggris.png',
                                        width: 24,
                                        height: 32,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Bahasa Inggris',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/icon_notebook.png',
                                              height: 10,
                                              width: 10,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              'Tugas',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFA4A4A4)),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icon_date.png',
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  '10-12-2021',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFA4A4A4),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '10:30 - 12:00',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 110,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Ambil',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color(0xFF32B770)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 70,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFE8F7EF),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 2,
                                        offset: Offset(
                                          2,
                                          2,
                                        )),
                                  ],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  )),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFFFE49A),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3))),
                                      height: 48,
                                      width: 48,
                                      child: Image.asset(
                                        'assets/images/icon_mapel_fisika.png',
                                        width: 24,
                                        height: 32,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Fisika Dasar 1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/icon_notebook.png',
                                              height: 10,
                                              width: 10,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Text(
                                              'Kuis',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFA4A4A4)),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/images/icon_date.png',
                                                  height: 10,
                                                  width: 10,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                const Text(
                                                  '10-12-2021',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFA4A4A4),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '10:30 - 12:00',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 110,
                                          child: TextButton(
                                            onPressed: null,
                                            child: const Text(
                                              'Selesai',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      const Color(0xFFE7E7E7)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Tanggapan Guru',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _toastMsg();
                              },
                              child: const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  'Lihat Semua',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                elevation: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(
                                            'assets/images/ava.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('Maimunah S.Pd.'),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Kuis / PKN',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFC8C8C8)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        right: 5,
                                        left: 5,
                                      ),
                                      child: Text(
                                        'Jangan lupa kekerjakan tugas halaman 50',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '1 menit yang lalu',
                                          style: TextStyle(
                                              color: Color(0xFFC8C8C8)),
                                        ),
                                        const SizedBox(
                                          width: 70,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: SizedBox(
                                            height: 30,
                                            width: 75,
                                            child: TextButton(
                                              child: const Text(
                                                "Lihat",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color(
                                                            0xFF1CAF60)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Card(
                                elevation: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          child: Image.asset(
                                            'assets/images/ava.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('Maimunah S.Pd.'),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Kuis / PKN',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xFFC8C8C8)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(right: 5, left: 5),
                                      child: Text(
                                        'Jangan lupa besok UAS, jangan lupa belajar ya',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '1 menit yang lalu',
                                          style: TextStyle(
                                              color: Color(0xFFC8C8C8)),
                                        ),
                                        const SizedBox(
                                          width: 70,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: SizedBox(
                                            height: 30,
                                            width: 75,
                                            child: TextButton(
                                              child: const Text(
                                                "Lihat",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        const Color(
                                                            0xFF1CAF60)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _toastMsg() {
    Fluttertoast.showToast(
        msg: 'Fitur ini belum tersedia',
        timeInSecForIosWeb: 1,
        fontSize: 12,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_LONG);
  }
}
