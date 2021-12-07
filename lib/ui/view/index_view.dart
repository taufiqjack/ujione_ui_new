import 'package:e_learning_uji/ui/view/home.dart';
import 'package:e_learning_uji/ui/view/nilai_view.dart';
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
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: widgetOptions[_selectedIndex],
      ),

      // Padding(
      //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Stack(
      //           children: [
      //             Container(
      //               decoration: const BoxDecoration(
      //                   color: Color(0xFF1CAF60),
      //                   borderRadius: BorderRadius.only(
      //                     bottomLeft: Radius.circular(20.0),
      //                     bottomRight: Radius.circular(20.0),
      //                   )),
      //               width: double.infinity,
      //               height: 150,
      //               child: Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 20),
      //                 child: Row(
      //                   children: [
      //                     CircleAvatar(
      //                       child: Image.asset(
      //                         'assets/images/icon_default_user.png',
      //                       ),
      //                       radius: 50.0,
      //                       backgroundColor: Colors.transparent,
      //                     ),
      //                     const SizedBox(
      //                       width: 5,
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(
      //                           top: 50, right: 0, left: 0),
      //                       child: Column(
      //                         mainAxisAlignment: MainAxisAlignment.start,
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: const [
      //                           Text(
      //                             'Justin Dias',
      //                             style: TextStyle(
      //                               fontSize: 24,
      //                               fontWeight: FontWeight.w700,
      //                               color: Colors.white,
      //                             ),
      //                           ),
      //                           SizedBox(
      //                             width: 8,
      //                           ),
      //                           Text(
      //                             'SMA Negeri 1 Yogyakarta',
      //                             style: TextStyle(
      //                               color: Colors.white,
      //                             ),
      //                           ),
      //                           SizedBox(
      //                             height: 10,
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     const SizedBox(
      //                       width: 40,
      //                     ),
      //                     Image.asset(
      //                       'assets/images/icon_notification.png',
      //                       width: 30,
      //                       height: 30,
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             Padding(
      //               padding:
      //                   const EdgeInsets.only(top: 120, right: 50, left: 50),
      //               child: Container(
      //                 height: 64,
      //                 width: 400,
      //                 decoration: const BoxDecoration(
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(10),
      //                   ),
      //                 ),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Image.asset(
      //                       'assets/images/icon_rank.png',
      //                       width: 40,
      //                       height: 40,
      //                     ),
      //                     const SizedBox(
      //                       width: 9,
      //                     ),
      //                     Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       crossAxisAlignment: CrossAxisAlignment.center,
      //                       children: [
      //                         Row(
      //                           children: [
      //                             const Text(
      //                               '6',
      //                               style: TextStyle(
      //                                 fontWeight: FontWeight.w700,
      //                                 fontSize: 16,
      //                               ),
      //                             ),
      //                             const SizedBox(
      //                               width: 5,
      //                             ),
      //                             Image.asset(
      //                               'assets/images/triangle.png',
      //                             ),
      //                           ],
      //                         ),
      //                         const Text(
      //                           'Rank',
      //                           style: TextStyle(
      //                             color: Color(0xFFAFAFAF),
      //                             fontSize: 14,
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                     const SizedBox(
      //                       width: 40,
      //                     ),
      //                     Container(
      //                       width: 2,
      //                       height: 32,
      //                       color: const Color(0xFFE6E6E6),
      //                     ),
      //                     const SizedBox(
      //                       width: 40,
      //                     ),
      //                     Image.asset(
      //                       'assets/images/icon_point.png',
      //                       height: 40,
      //                       width: 40,
      //                     ),
      //                     const SizedBox(
      //                       width: 10,
      //                     ),
      //                     Column(
      //                       mainAxisAlignment: MainAxisAlignment.center,
      //                       children: const [
      //                         Text(
      //                           '82',
      //                           style: TextStyle(
      //                             color: Colors.black,
      //                           ),
      //                         ),
      //                         Text(
      //                           'Nilai',
      //                           style: TextStyle(
      //                             color: Color(0xFFAFAFAF),
      //                           ),
      //                         )
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //         SingleChildScrollView(
      //           child: Column(
      //             children: [
      //               const SizedBox(
      //                 height: 24,
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(
      //                   left: 24,
      //                   right: 24,
      //                 ),
      //                 child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       const Text(
      //                         'E-learning Hari ini',
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.w700,
      //                           fontSize: 18,
      //                         ),
      //                       ),
      //                       InkWell(
      //                         onTap: () {},
      //                         child: const Align(
      //                           alignment: Alignment.topRight,
      //                           child: Text(
      //                             'Lihat Semua',
      //                             textAlign: TextAlign.left,
      //                             style: TextStyle(
      //                               color: Colors.green,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ]),
      //               ),
      //               Column(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   const SizedBox(
      //                     height: 10,
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.only(left: 24),
      //                     child: SingleChildScrollView(
      //                       scrollDirection: Axis.horizontal,
      //                       child: Row(
      //                         children: [
      //                           Stack(
      //                             children: [
      //                               SizedBox(
      //                                 width: 200,
      //                                 height: 220,
      //                                 child: Card(
      //                                   color: const Color(0xFFE8F7EF),
      //                                   elevation: 2,
      //                                   semanticContainer: true,
      //                                   child: Column(
      //                                     children: [
      //                                       Image.asset(
      //                                         'assets/images/icon_ilustrasi_mapel_bhs_indo.png',
      //                                         fit: BoxFit.cover,
      //                                       ),
      //                                       const SizedBox(
      //                                         height: 10,
      //                                       ),
      //                                     ],
      //                                   ),
      //                                   shape: RoundedRectangleBorder(
      //                                     borderRadius: BorderRadius.circular(
      //                                       10.0,
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ),
      //                               Padding(
      //                                 padding: const EdgeInsets.only(
      //                                   top: 105,
      //                                   left: 4,
      //                                 ),
      //                                 child: Container(
      //                                   decoration: const BoxDecoration(
      //                                       color: Colors.white,
      //                                       boxShadow: [
      //                                         BoxShadow(
      //                                             color: Colors.black54,
      //                                             blurRadius: 2,
      //                                             offset: Offset(
      //                                               2,
      //                                               2,
      //                                             ))
      //                                       ],
      //                                       borderRadius: BorderRadius.all(
      //                                           Radius.circular(10))),
      //                                   height: 110,
      //                                   width: 195,
      //                                   child: Row(
      //                                     mainAxisAlignment:
      //                                         MainAxisAlignment.start,
      //                                     crossAxisAlignment:
      //                                         CrossAxisAlignment.start,
      //                                     children: [
      //                                       Padding(
      //                                         padding: const EdgeInsets.only(
      //                                           left: 5,
      //                                           top: 5,
      //                                         ),
      //                                         child: Column(
      //                                           mainAxisAlignment:
      //                                               MainAxisAlignment.start,
      //                                           crossAxisAlignment:
      //                                               CrossAxisAlignment.start,
      //                                           children: [
      //                                             const Text(
      //                                               'Bahasa Indonesia',
      //                                               style: TextStyle(
      //                                                 fontSize: 12,
      //                                                 fontWeight:
      //                                                     FontWeight.w400,
      //                                                 color: Color(0xFF60C78F),
      //                                               ),
      //                                             ),
      //                                             const SizedBox(
      //                                               height: 5,
      //                                             ),
      //                                             const Text(
      //                                               'Bahasa Indonesia\nDasar 1',
      //                                               style: TextStyle(
      //                                                 fontSize: 12,
      //                                                 fontWeight:
      //                                                     FontWeight.w700,
      //                                               ),
      //                                             ),
      //                                             const SizedBox(
      //                                               height: 12,
      //                                             ),
      //                                             Row(
      //                                               children: [
      //                                                 Image.asset(
      //                                                     'assets/images/icon_book.png'),
      //                                                 const SizedBox(
      //                                                   width: 5,
      //                                                 ),
      //                                                 const Text(
      //                                                   '1 - 10',
      //                                                   style: TextStyle(
      //                                                       fontSize: 12,
      //                                                       color: Color(
      //                                                           0xFFA4A4A4)),
      //                                                 ),
      //                                                 const SizedBox(
      //                                                   width: 5,
      //                                                 ),
      //                                                 Image.asset(
      //                                                   'assets/images/icon_time.png',
      //                                                 ),
      //                                                 const SizedBox(
      //                                                   width: 5,
      //                                                 ),
      //                                                 const Text(
      //                                                   '10:30 - 12:00',
      //                                                   style: TextStyle(
      //                                                       fontSize: 12,
      //                                                       color: Color(
      //                                                           0xFFA4A4A4)),
      //                                                 )
      //                                               ],
      //                                             )
      //                                           ],
      //                                         ),
      //                                       ),
      //                                       const Padding(
      //                                         padding: EdgeInsets.only(
      //                                           top: 5,
      //                                         ),
      //                                         child: Icon(
      //                                           Icons.favorite,
      //                                           color: Colors.red,
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                           const SizedBox(
      //                             width: 20,
      //                           ),
      //                           Stack(
      //                             children: [
      //                               SizedBox(
      //                                 width: 200,
      //                                 height: 220,
      //                                 child: Card(
      //                                   color: const Color(0xFFE8F7EF),
      //                                   elevation: 2,
      //                                   semanticContainer: true,
      //                                   child: Column(
      //                                     children: [
      //                                       Image.asset(
      //                                         'assets/images/icon_ilustrasi_mapel_kimia.png',
      //                                         fit: BoxFit.cover,
      //                                       ),
      //                                       const SizedBox(
      //                                         height: 10,
      //                                       ),
      //                                     ],
      //                                   ),
      //                                   shape: RoundedRectangleBorder(
      //                                       borderRadius: BorderRadius.circular(
      //                                     10.0,
      //                                   )),
      //                                 ),
      //                               ),
      //                               Padding(
      //                                 padding: const EdgeInsets.only(
      //                                     top: 105, left: 4),
      //                                 child: Container(
      //                                   decoration: const BoxDecoration(
      //                                       color: Colors.white,
      //                                       boxShadow: [
      //                                         BoxShadow(
      //                                             color: Colors.black54,
      //                                             blurRadius: 2,
      //                                             offset: Offset(
      //                                               2,
      //                                               2,
      //                                             ))
      //                                       ],
      //                                       borderRadius: BorderRadius.all(
      //                                           Radius.circular(10))),
      //                                   height: 110,
      //                                   width: 195,
      //                                   child: Row(
      //                                     mainAxisAlignment:
      //                                         MainAxisAlignment.start,
      //                                     crossAxisAlignment:
      //                                         CrossAxisAlignment.start,
      //                                     children: [
      //                                       Padding(
      //                                         padding: const EdgeInsets.only(
      //                                           left: 5,
      //                                           top: 5,
      //                                         ),
      //                                         child: Column(
      //                                           mainAxisAlignment:
      //                                               MainAxisAlignment.start,
      //                                           crossAxisAlignment:
      //                                               CrossAxisAlignment.start,
      //                                           children: [
      //                                             const Text(
      //                                               'Kimia',
      //                                               style: TextStyle(
      //                                                 fontSize: 12,
      //                                                 fontWeight:
      //                                                     FontWeight.w400,
      //                                                 color: Color(0xFF60C78F),
      //                                               ),
      //                                             ),
      //                                             const SizedBox(
      //                                               height: 5,
      //                                             ),
      //                                             const Text(
      //                                               'Kimia Dasar 1\n',
      //                                               style: TextStyle(
      //                                                 fontSize: 12,
      //                                                 fontWeight:
      //                                                     FontWeight.w700,
      //                                               ),
      //                                             ),
      //                                             const SizedBox(
      //                                               height: 12,
      //                                             ),
      //                                             Row(
      //                                               children: [
      //                                                 Image.asset(
      //                                                     'assets/images/icon_book.png'),
      //                                                 const SizedBox(
      //                                                   width: 5,
      //                                                 ),
      //                                                 const Text(
      //                                                   '1 - 10',
      //                                                   style: TextStyle(
      //                                                       fontSize: 12,
      //                                                       color: Color(
      //                                                           0xFFA4A4A4)),
      //                                                 ),
      //                                                 const SizedBox(
      //                                                   width: 5,
      //                                                 ),
      //                                                 Image.asset(
      //                                                   'assets/images/icon_time.png',
      //                                                 ),
      //                                                 const SizedBox(
      //                                                   width: 5,
      //                                                 ),
      //                                                 const Text(
      //                                                   '10:30 - 12:00',
      //                                                   style: TextStyle(
      //                                                       fontSize: 12,
      //                                                       color: Color(
      //                                                           0xFFA4A4A4)),
      //                                                 )
      //                                               ],
      //                                             )
      //                                           ],
      //                                         ),
      //                                       ),
      //                                       const SizedBox(
      //                                         width: 5,
      //                                       ),
      //                                       const Icon(
      //                                         Icons.favorite_border,
      //                                       )
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ),
      //                               const SizedBox(
      //                                 height: 10,
      //                               ),
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 32,
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(left: 24, right: 24),
      //                 child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       const Text(
      //                         'Ujian dan Tugas',
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.w700,
      //                           fontSize: 18,
      //                         ),
      //                       ),
      //                       InkWell(
      //                         onTap: () {},
      //                         child: const Align(
      //                           alignment: Alignment.topRight,
      //                           child: Text(
      //                             'Lihat Semua',
      //                             textAlign: TextAlign.left,
      //                             style: TextStyle(
      //                               color: Colors.green,
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ]),
      //               ),
      //               const SizedBox(
      //                 height: 16,
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(left: 24, right: 20),
      //                 child: Column(
      //                   children: [
      //                     Card(
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(8),
      //                       ),
      //                       color: const Color(0xFFE8F7EF),
      //                       elevation: 0,
      //                       child: ListTile(
      //                         leading: Container(
      //                           decoration: const BoxDecoration(
      //                               color: Color(0xFFA4DFBF),
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(3))),
      //                           height: 48,
      //                           width: 48,
      //                           child: Image.asset(
      //                             'assets/images/icon_mapel_bahasa_indonesia.png',
      //                             width: 24,
      //                             height: 32,
      //                           ),
      //                         ),
      //                         title: const Text(
      //                           'Bahasa Indonesia',
      //                           style: TextStyle(
      //                             fontWeight: FontWeight.w700,
      //                           ),
      //                         ),
      //                         subtitle: Row(
      //                           children: [
      //                             Image.asset(
      //                               'assets/images/icon_notebook.png',
      //                               height: 10,
      //                               width: 10,
      //                             ),
      //                             const SizedBox(
      //                               width: 5,
      //                             ),
      //                             const Text(
      //                               'Ujian',
      //                               style: TextStyle(
      //                                   fontSize: 12, color: Color(0xFFA4A4A4)),
      //                             ),
      //                             const SizedBox(
      //                               width: 10,
      //                             ),
      //                             Row(
      //                               children: [
      //                                 Image.asset(
      //                                   'assets/images/icon_date.png',
      //                                   height: 10,
      //                                   width: 10,
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 5,
      //                                 ),
      //                                 const Text(
      //                                   '10-12-2021',
      //                                   style: TextStyle(
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ],
      //                         ),
      //                         trailing: Expanded(
      //                           flex: 1,
      //                           child: Column(
      //                             children: [
      //                               const Expanded(
      //                                 flex: 1,
      //                                 child: Text(
      //                                   '10:30 - 12:00',
      //                                   style: TextStyle(
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                               ),
      //                               const SizedBox(
      //                                 height: 5,
      //                               ),
      //                               Expanded(
      //                                 flex: 2,
      //                                 child: TextButton(
      //                                   onPressed: () {},
      //                                   child: const Text(
      //                                     'Lanjut',
      //                                     style: TextStyle(
      //                                       color: Colors.black,
      //                                       fontSize: 12,
      //                                       fontWeight: FontWeight.w700,
      //                                     ),
      //                                   ),
      //                                   style: ButtonStyle(
      //                                       backgroundColor:
      //                                           MaterialStateProperty.all(
      //                                               const Color(0xFFFFC21C)),
      //                                       fixedSize:
      //                                           MaterialStateProperty.all(
      //                                               const Size(70, 8))),
      //                                 ),
      //                               ),
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     Card(
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(8),
      //                       ),
      //                       color: const Color(0xFFE8F7EF),
      //                       elevation: 0,
      //                       child: ListTile(
      //                         leading: Container(
      //                           decoration: const BoxDecoration(
      //                               color: Color(0xFFA4DFBF),
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(3))),
      //                           height: 48,
      //                           width: 48,
      //                           child: Image.asset(
      //                             'assets/images/icon_mapel_biologi.png',
      //                             width: 24,
      //                             height: 32,
      //                           ),
      //                         ),
      //                         title: const Text(
      //                           'Biologi',
      //                           style: TextStyle(
      //                             fontWeight: FontWeight.w700,
      //                           ),
      //                         ),
      //                         subtitle: Row(
      //                           children: [
      //                             Image.asset(
      //                               'assets/images/icon_notebook.png',
      //                               height: 10,
      //                               width: 10,
      //                             ),
      //                             const SizedBox(
      //                               width: 5,
      //                             ),
      //                             const Text(
      //                               'Ujian',
      //                               style: TextStyle(
      //                                   fontSize: 12, color: Color(0xFFA4A4A4)),
      //                             ),
      //                             const SizedBox(
      //                               width: 10,
      //                             ),
      //                             Row(
      //                               children: [
      //                                 Image.asset(
      //                                   'assets/images/icon_date.png',
      //                                   height: 10,
      //                                   width: 10,
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 5,
      //                                 ),
      //                                 const Text(
      //                                   '10-12-2021',
      //                                   style: TextStyle(
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ],
      //                         ),
      //                         trailing: Column(
      //                           mainAxisAlignment: MainAxisAlignment.end,
      //                           crossAxisAlignment: CrossAxisAlignment.end,
      //                           children: [
      //                             const Expanded(
      //                               flex: 1,
      //                               child: Text(
      //                                 '10:30 - 12:00',
      //                                 style: TextStyle(
      //                                   fontSize: 12,
      //                                 ),
      //                               ),
      //                             ),
      //                             Expanded(
      //                               flex: 2,
      //                               child: TextButton(
      //                                 onPressed: () {},
      //                                 child: const Text(
      //                                   'Belum tersedia',
      //                                   style: TextStyle(
      //                                     color: Colors.black,
      //                                     fontWeight: FontWeight.w700,
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                                 style: ButtonStyle(
      //                                     backgroundColor:
      //                                         MaterialStateProperty.all(
      //                                             const Color(0xFFE7E7E7)),
      //                                     fixedSize: MaterialStateProperty.all(
      //                                         const Size(50, 5))),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     Card(
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(8),
      //                       ),
      //                       color: const Color(0xFFE8F7EF),
      //                       elevation: 0,
      //                       child: ListTile(
      //                         leading: Container(
      //                           decoration: const BoxDecoration(
      //                               color: Color(0xFFB3CAFF),
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(3))),
      //                           height: 48,
      //                           width: 48,
      //                           child: Image.asset(
      //                             'assets/images/icon_mapel_bahasa_inggris.png',
      //                             width: 24,
      //                             height: 32,
      //                           ),
      //                         ),
      //                         title: const Text(
      //                           'Bahasa Inggris',
      //                           style: TextStyle(
      //                             fontWeight: FontWeight.w700,
      //                           ),
      //                         ),
      //                         subtitle: Row(
      //                           children: [
      //                             Image.asset(
      //                               'assets/images/icon_notebook.png',
      //                               height: 10,
      //                               width: 10,
      //                             ),
      //                             const SizedBox(
      //                               width: 5,
      //                             ),
      //                             const Text(
      //                               'Tugas',
      //                               style: TextStyle(
      //                                   fontSize: 12, color: Color(0xFFA4A4A4)),
      //                             ),
      //                             const SizedBox(
      //                               width: 10,
      //                             ),
      //                             Row(
      //                               children: [
      //                                 Image.asset(
      //                                   'assets/images/icon_date.png',
      //                                   height: 10,
      //                                   width: 10,
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 5,
      //                                 ),
      //                                 const Text(
      //                                   '10-12-2021',
      //                                   style: TextStyle(
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ],
      //                         ),
      //                         trailing: Column(
      //                           mainAxisAlignment: MainAxisAlignment.end,
      //                           children: [
      //                             const Expanded(
      //                               flex: 1,
      //                               child: Text(
      //                                 '10:30 - 12:00',
      //                                 style: TextStyle(
      //                                   fontSize: 12,
      //                                 ),
      //                               ),
      //                             ),
      //                             const SizedBox(
      //                               height: 5,
      //                             ),
      //                             Expanded(
      //                               flex: 2,
      //                               child: TextButton(
      //                                 onPressed: () {},
      //                                 child: const Text(
      //                                   'Ambil',
      //                                   style: TextStyle(
      //                                     color: Colors.white,
      //                                     fontWeight: FontWeight.w700,
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                                 style: ButtonStyle(
      //                                     backgroundColor:
      //                                         MaterialStateProperty.all(
      //                                             const Color(0xFF32B770)),
      //                                     fixedSize: MaterialStateProperty.all(
      //                                         const Size(70, 5))),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     Card(
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(8),
      //                       ),
      //                       color: const Color(0xFFE8F7EF),
      //                       elevation: 0,
      //                       child: ListTile(
      //                         leading: Container(
      //                           decoration: const BoxDecoration(
      //                               color: Color(0xFFFFE49A),
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(3))),
      //                           height: 48,
      //                           width: 48,
      //                           child: Image.asset(
      //                             'assets/images/icon_mapel_fisika.png',
      //                             width: 24,
      //                             height: 32,
      //                           ),
      //                         ),
      //                         title: const Text(
      //                           'Fisika Dasar 1',
      //                           style: TextStyle(
      //                             fontWeight: FontWeight.w700,
      //                           ),
      //                         ),
      //                         subtitle: Row(
      //                           children: [
      //                             Image.asset(
      //                               'assets/images/icon_notebook.png',
      //                               height: 10,
      //                               width: 10,
      //                             ),
      //                             const SizedBox(
      //                               width: 5,
      //                             ),
      //                             const Text(
      //                               'Kuis',
      //                               style: TextStyle(
      //                                   fontSize: 12, color: Color(0xFFA4A4A4)),
      //                             ),
      //                             const SizedBox(
      //                               width: 10,
      //                             ),
      //                             Row(
      //                               children: [
      //                                 Image.asset(
      //                                   'assets/images/icon_date.png',
      //                                   height: 10,
      //                                   width: 10,
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 5,
      //                                 ),
      //                                 const Text(
      //                                   '10-12-2021',
      //                                   style: TextStyle(
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ],
      //                         ),
      //                         trailing: Column(
      //                           children: [
      //                             const Expanded(
      //                               flex: 1,
      //                               child: Text(
      //                                 '10:30 - 12:00',
      //                                 style: TextStyle(
      //                                   fontSize: 12,
      //                                 ),
      //                               ),
      //                             ),
      //                             const SizedBox(
      //                               height: 5,
      //                             ),
      //                             Expanded(
      //                               flex: 2,
      //                               child: TextButton(
      //                                 onPressed: () {},
      //                                 child: const Text(
      //                                   'Selesai',
      //                                   style: TextStyle(
      //                                     color: Colors.black,
      //                                     fontWeight: FontWeight.w700,
      //                                     fontSize: 12,
      //                                   ),
      //                                 ),
      //                                 style: ButtonStyle(
      //                                     backgroundColor:
      //                                         MaterialStateProperty.all(
      //                                             const Color(0xFFE7E7E7)),
      //                                     fixedSize: MaterialStateProperty.all(
      //                                         const Size(72, 5))),
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(
      //                 height: 32,
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(left: 24, right: 24),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     const Text(
      //                       'Tanggapan Guru',
      //                       style: TextStyle(
      //                         fontWeight: FontWeight.w700,
      //                         fontSize: 18,
      //                       ),
      //                     ),
      //                     InkWell(
      //                       onTap: () {},
      //                       child: const Align(
      //                         alignment: Alignment.topRight,
      //                         child: Text(
      //                           'Lihat Semua',
      //                           textAlign: TextAlign.left,
      //                           style: TextStyle(
      //                             color: Colors.green,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               const SizedBox(
      //                 height: 10,
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.only(left: 24, right: 24),
      //                 child: SingleChildScrollView(
      //                   scrollDirection: Axis.horizontal,
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Card(
      //                         elevation: 1,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.start,
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Row(
      //                               children: [
      //                                 CircleAvatar(
      //                                   child: Image.asset(
      //                                     'assets/images/ava.png',
      //                                     height: 50,
      //                                     width: 50,
      //                                   ),
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 16,
      //                                 ),
      //                                 Column(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.start,
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: const [
      //                                     Text('Maimunah S.Pd.'),
      //                                     SizedBox(
      //                                       height: 5,
      //                                     ),
      //                                     Text(
      //                                       'Kuis / PKN',
      //                                       style: TextStyle(
      //                                           fontSize: 12,
      //                                           color: Color(0xFFC8C8C8)),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ],
      //                             ),
      //                             const SizedBox(
      //                               height: 10,
      //                             ),
      //                             const Padding(
      //                               padding: EdgeInsets.only(
      //                                 right: 5,
      //                                 left: 5,
      //                               ),
      //                               child: Text(
      //                                 'Jangan lupa kekerjakan tugas halaman 50',
      //                               ),
      //                             ),
      //                             const SizedBox(
      //                               height: 10,
      //                             ),
      //                             Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.spaceBetween,
      //                               crossAxisAlignment:
      //                                   CrossAxisAlignment.center,
      //                               children: [
      //                                 const SizedBox(
      //                                   width: 10,
      //                                 ),
      //                                 const Text(
      //                                   '1 menit yang lalu',
      //                                   style:
      //                                       TextStyle(color: Color(0xFFC8C8C8)),
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 70,
      //                                 ),
      //                                 TextButton(
      //                                   child: const Text(
      //                                     "Lihat",
      //                                     style: TextStyle(
      //                                       color: Colors.white,
      //                                     ),
      //                                   ),
      //                                   onPressed: () {},
      //                                   style: ButtonStyle(
      //                                       backgroundColor:
      //                                           MaterialStateProperty.all(
      //                                               const Color(0xFF1CAF60)),
      //                                       fixedSize:
      //                                           MaterialStateProperty.all(
      //                                               const Size(72, 24))),
      //                                 ),
      //                               ],
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                       const SizedBox(
      //                         width: 24,
      //                       ),
      //                       Card(
      //                         elevation: 1,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.start,
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Row(
      //                               children: [
      //                                 CircleAvatar(
      //                                   child: Image.asset(
      //                                     'assets/images/ava.png',
      //                                     height: 50,
      //                                     width: 50,
      //                                   ),
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 16,
      //                                 ),
      //                                 Column(
      //                                   mainAxisAlignment:
      //                                       MainAxisAlignment.start,
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: const [
      //                                     Text('Maimunah S.Pd.'),
      //                                     SizedBox(
      //                                       height: 5,
      //                                     ),
      //                                     Text(
      //                                       'Kuis / PKN',
      //                                       style: TextStyle(
      //                                           fontSize: 12,
      //                                           color: Color(0xFFC8C8C8)),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ],
      //                             ),
      //                             const SizedBox(
      //                               height: 10,
      //                             ),
      //                             const Padding(
      //                               padding: EdgeInsets.only(right: 5, left: 5),
      //                               child: Text(
      //                                 'Jangan lupa kekerjakan tugas halaman 50',
      //                               ),
      //                             ),
      //                             const SizedBox(
      //                               height: 10,
      //                             ),
      //                             Row(
      //                               mainAxisAlignment:
      //                                   MainAxisAlignment.spaceBetween,
      //                               children: [
      //                                 const SizedBox(
      //                                   width: 5,
      //                                 ),
      //                                 const Text(
      //                                   '1 menit yang lalu',
      //                                   style:
      //                                       TextStyle(color: Color(0xFFC8C8C8)),
      //                                 ),
      //                                 const SizedBox(
      //                                   width: 70,
      //                                 ),
      //                                 TextButton(
      //                                   child: const Text(
      //                                     "Lihat",
      //                                     style: TextStyle(
      //                                       color: Colors.white,
      //                                     ),
      //                                   ),
      //                                   onPressed: () {},
      //                                   style: ButtonStyle(
      //                                       backgroundColor:
      //                                           MaterialStateProperty.all(
      //                                               const Color(0xFF1CAF60)),
      //                                       fixedSize:
      //                                           MaterialStateProperty.all(
      //                                               const Size(72, 24))),
      //                                 ),
      //                               ],
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
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
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
