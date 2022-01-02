// import 'package:dotted_border/dotted_border.dart';
// import 'package:e_learning_uji/data/data.dart';
// import 'package:e_learning_uji/data/string.dart';
// import 'package:e_learning_uji/data/stringlist.dart';
// import 'package:e_learning_uji/ui/view/index_view.dart';
// import 'package:e_learning_uji/ui/widget/draggable_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:reorderables/reorderables.dart';
// import 'package:sliding_up_panel/sliding_up_panel.dart';

// class DragDropView extends StatefulWidget {
//   const DragDropView({Key? key}) : super(key: key);

//   @override
//   _DragDropViewState createState() => _DragDropViewState();
// }

// class _DragDropViewState extends State<DragDropView> {
//   bool? gameover;
//   final List<Birds> all = allBirds;
//   final List<Birds> _merpati = [];
//   final List<Birds> _pipit = [];
//   final List<Birds> _perkutut = [];
//   final List<Birds> _cenderawasih = [];
//   final List<Birds> _beo = [];
//   final List<Birds> _elang = [];

//   void removeAll(Birds toRemove) {
//     all.removeWhere((bird) => bird.imgAsset == toRemove.imgAsset);
//     _merpati.removeWhere((bird) => bird.imgAsset == toRemove.imgAsset);
//     _pipit.removeWhere((bird) => bird.imgAsset == toRemove.imgAsset);
//     _perkutut.removeWhere((bird) => bird.imgAsset == toRemove.imgAsset);
//     _cenderawasih.removeWhere((bird) => bird.imgAsset == toRemove.imgAsset);
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       systemNavigationBarColor: Colors.black,
//       statusBarColor: Colors.transparent,
//       statusBarBrightness: Brightness.dark,
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));

//     List<String> items = ['Elang', 'Merpati', 'Perkutut', 'Cenderawasih'];

//     return RefreshIndicator(
//       onRefresh: _onRefresh,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: InkWell(
//               child: const Icon(
//                 Icons.arrow_back_sharp,
//                 color: Colors.black,
//               ),
//               onTap: () async {
//                 setState(() {});
//                 await Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(
//                         builder: (BuildContext context) => const IndexView()),
//                     (route) => false);
//               }),
//           title: const Text(
//             'Matching Images',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         // body: SlidingUpPanel(
//         //   panel: const Center(
//         //     child: Text('Sliding'),
//         //   ),
//         body: Padding(
//           padding:
//               const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
//           child: SingleChildScrollView(
//             child: Column(children: [
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Pasangkan gambar dibawah ini:',
//                 ),
//               ),
//               Container(
//                 height: 600,
//                 width: 400,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(width: 2, color: Colors.grey.shade300),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     // child: ReorderableListView(
//                     //     children: [
//                     //       for (final item in items)
//                     //         Card(
//                     //           color: Colors.lightGr`een,
//                     //           key: ValueKey(item),
//                     //           elevation: 1,
//                     //           child: ListTile(
//                     //             title: Text(item),
//                     //           ),
//                     //         ),
//                     //     ],
//                     //     onReorder: (int oldIndex, int newIndex) {
//                     //       setState(() {
//                     //         if (newIndex > oldIndex) {
//                     //           newIndex - 1;
//                     //         }
//                     //         final item = items.removeAt(oldIndex);
//                     //         items.insert(newIndex, item);
//                     //       });
//                     //     }),
//                     imgList(
//                       context,
//                       birds: all,
//                       birdsName: BirdsName.values,
//                       onAccept: (data) => setState(() {
//                         removeAll(data);
//                         all.add(data);
//                       }),
//                     ),
//                     Column(
//                       children: [
//                         // target(
//                         //   context,
//                         //   text: MERPATI,
//                         //   birds: _merpati,
//                         //   birdsName: [BirdsName.merpati],
//                         //   onAccept: (data) => setState(() {
//                         //     removeAll(data);
//                         //     _merpati.add(data);
//                         //   }),
//                         // ),
//                         // ReorderableListView(
//                         //   onReorder: (int oldIndex, int newIndex) {
//                         //     setState(() {
//                         //       if (newIndex < all.length)
//                         //         newIndex = all.length;
//                         //       if (oldIndex < newIndex) newIndex--;

//                         //       Birds bird = all[oldIndex];
//                         //       all.remove(bird);
//                         //       all.insert(newIndex, bird);
//                         //     });
//                         //   },
//                         //   children: [
//                         _oldTarget(
//                           context,
//                           text: MERPATI,
//                           birds: _merpati,
//                           birdName: [BirdsName.merpati],
//                           onAccept: (data) => setState(() {
//                             removeAll(data);
//                             _merpati.add(data);
//                           }),
//                         ),
//                         _oldTarget(
//                           context,
//                           text: PIPIT,
//                           birds: _pipit,
//                           birdName: [BirdsName.merpati],
//                           onAccept: (data) => setState(() {
//                             removeAll(data);
//                             _pipit.add(data);
//                           }),
//                         ),
//                         _oldTarget(
//                           context,
//                           text: PERKUTUT,
//                           birds: _perkutut,
//                           birdName: [BirdsName.merpati],
//                           onAccept: (data) => setState(() {
//                             removeAll(data);
//                             _perkutut.add(data);
//                           }),
//                         ),
//                         _oldTarget(
//                           context,
//                           text: CENDERAWASIH,
//                           birds: _cenderawasih,
//                           birdName: [BirdsName.merpati],
//                           onAccept: (data) => setState(() {
//                             removeAll(data);
//                             _cenderawasih.add(data);
//                           }),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 // ]),
//               ),
//               ElevatedButton(
//                 onPressed: null,
//                 child: const Text(
//                   'Selanjutnya',
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                   Colors.green,
//                 )),
//               ),
//             ]),
//           ),
//         ),
//         // borderRadius: const BorderRadius.only(
//         //   topLeft: Radius.circular(10),
//         //   topRight: Radius.circular(10),
//         // ),
//         // ),
//       ),
//     );
//   }

//   void _onReorder(int oldIndex, int newIndex) {
//     setState(() {
//       Birds birds = allBirds.removeAt(oldIndex);
//       allBirds.insert(newIndex, birds);
//     });
//   }

//   Widget imgList(
//     BuildContext context, {
//     required List<Birds> birds,
//     required List<BirdsName> birdsName,
//     required DragTargetAccept<Birds> onAccept,
//   }) =>
//       DragTarget<Birds>(
//         builder: (context, cd, rj) => Column(
//           children: [
//             ...birds
//                 .map((bird) => Padding(
//                     padding: const EdgeInsets.all(25),
//                     child: SizedBox(
//                         height: 70,
//                         width: 100,
//                         child: DraggableWidget(bird: bird))))
//                 .toList()
//               ..shuffle()
//           ],
//         ),
//         onWillAccept: (data) => true,
//         onAccept: (data) {
//           onAccept(data);
//         },
//       );

//   Widget _oldTarget(
//     BuildContext context, {
//     String? text,
//     required List<Birds> birds,
//     required List<BirdsName> birdName,
//     required DragTargetAccept<Birds> onAccept,
//   }) =>
//       Padding(
//         padding: const EdgeInsets.only(top: 20),
//         child: DottedBorder(
//           borderType: BorderType.RRect,
//           strokeWidth: 2,
//           radius: const Radius.circular(5),
//           child: Container(
//             height: 70,
//             width: 100,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Colors.grey.shade400),
//             child: DragTarget<Birds>(
//               builder: (context, cd, rj) => Stack(
//                 children: [
//                   // ReorderableColumn(
//                   //   onReorder: _onReorder,
//                   //   children: [
//                   Center(
//                     child: oldTText(text!),
//                   ),
//                   ...birds
//                       .map(
//                         (bird) => DraggableWidget(
//                           bird: bird,
//                         ),
//                       )
//                       .toList()
//                 ],
//               ),
//               //   ],
//               // ),
//               onWillAccept: (data) => true,
//               onAccept: (data) {
//                 onAccept(data);
//               },
//             ),
//           ),
//         ),
//       );

//   Widget target(
//     BuildContext context, {
//     // List<ListName>? listName,
//     String? text,
//     required List<Birds> birds,
//     required List<BirdsName> birdsName,
//     required DragTargetAccept<Birds> onAccept,
//   }) =>
//       Padding(
//         padding: const EdgeInsetsDirectional.only(top: 10),
//         child: SingleChildScrollView(
//           child: SizedBox(
//             height: 550,
//             width: 120,
//             child: Stack(children: [
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: SizedBox(
//                       height: 80,
//                       width: 100,
//                       child: DottedBorder(
//                         borderType: BorderType.RRect,
//                         strokeWidth: 2,
//                         radius: const Radius.circular(5),
//                         color: Colors.grey.shade400,
//                         child: const Center(
//                           child: Text(
//                             'Merpati',
//                             style: TextStyle(color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: SizedBox(
//                       height: 80,
//                       width: 100,
//                       child: DottedBorder(
//                           borderType: BorderType.RRect,
//                           strokeWidth: 2,
//                           radius: const Radius.circular(5),
//                           color: Colors.grey.shade400,
//                           child: const Center(
//                             child: Text(
//                               'Perkutut',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           )),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: SizedBox(
//                         height: 80,
//                         width: 100,
//                         child: DottedBorder(
//                             borderType: BorderType.RRect,
//                             strokeWidth: 2,
//                             radius: const Radius.circular(5),
//                             color: Colors.grey.shade400,
//                             child: const Center(
//                               child: Text(
//                                 'Pipit',
//                                 style: TextStyle(color: Colors.black),
//                               ),
//                             ))),
//                   ),
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: SizedBox(
//                       height: 80,
//                       width: 100,
//                       child: DottedBorder(
//                         borderType: BorderType.RRect,
//                         strokeWidth: 2,
//                         radius: const Radius.circular(5),
//                         color: Colors.grey.shade400,
//                         child: const Center(
//                           child: Text(
//                             'Cenderawasih',
//                             style: TextStyle(color: Colors.black),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               DragTarget<Birds>(
//                 builder: (context, cd, rj) => ReorderableListView(
//                   onReorder: (int oldIndex, int newIndex) {
//                     setState(() {
//                       if (newIndex < birds.length) newIndex = birds.length;
//                       if (oldIndex < newIndex) newIndex--;

//                       Birds bird = birds[oldIndex];
//                       birds.remove(bird);
//                       birds.insert(newIndex, bird);
//                     });
//                   },
//                   children: [
//                     //    Column(
//                     // children: [
//                     //   // Center(
//                     //   //   child: buildText(text!),
//                     //   // ),
//                     buildText(text!),

//                     ...birds
//                         .map((bird) => Padding(
//                             padding: const EdgeInsetsDirectional.only(top: 10),
//                             child: DraggableWidget(bird: bird)))
//                         .toList(),
//                   ],
//                 ),
//                 onWillAccept: (data) => true,
//                 onAccept: (data) {
//                   onAccept(data);
//                 },
//                 onMove: (details) => true,
//               ),
//             ]),
//           ),
//         ),
//       );

//   Future<void> _onRefresh() async {
//     await Future.delayed(const Duration(milliseconds: 1000));
//   }

//   Widget oldTText(String text) => Text(
//         text,
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 14,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       );

//   Widget buildText(String text) => Text(
//         text,
//         style: const TextStyle(
//           color: Colors.transparent,
//           fontSize: 14,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       );
// }
