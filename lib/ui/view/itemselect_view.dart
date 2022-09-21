import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../core/constans/api.dart';
import '../../core/viewmodels/products_viewmodel.dart';
import 'base_view.dart';

class ItemSelectView extends StatefulWidget {
  const ItemSelectView({Key? key}) : super(key: key);

  @override
  State<ItemSelectView> createState() => _ItemSelectViewState();
}

class _ItemSelectViewState extends State<ItemSelectView> {
  var selectedList = [];
  var itemList = [];
  final List<int> itemcount = [];
  bool selectedItem = false;
  int? selectItem;
  List<bool> isMark = [];

  @override
  Widget build(BuildContext context) {
    return BaseView<ProductsViewModel>(
      onModelReady: (data) {
        data.getProduct(context);
      },
      builder: (context, data, child) => Scaffold(
          body: WillPopScope(
              onWillPop: willPop,
              child: data.products == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: SingleChildScrollView(
                          child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.products!.length,
                        itemBuilder: (context, index) {
                          isMark = List.generate(
                              data.products!.length, (_) => false);
                          itemList.add(selectItem);
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.grey.shade300, width: 1),
                                  ),
                                  child: Center(
                                    child: RichText(
                                        text: TextSpan(
                                      style:
                                          const TextStyle(color: Colors.black),
                                      children: [
                                        const TextSpan(
                                            text: 'Pilihlah semua gambar '),
                                        TextSpan(
                                            text: data.products![index].nama,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w700)),
                                        const TextSpan(text: ' dibawah ini'),
                                      ],
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 5),
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: data.products!.length,
                                    itemBuilder: (context, i) {
                                      for (var i = 0;
                                          i < data.products!.length;
                                          i++) {
                                        itemcount.add(0);
                                      }
                                      return InkWell(
                                          onTap: () {
                                            setState(() {
                                              selectItem = i;
                                              // itemcount[i] = i;

                                              if (kDebugMode) {
                                                for (var i = 0; i < 100; i++) {
                                                  print(
                                                      "${i + 1} days of code");
                                                }
                                                print(
                                                    '[{"title":"${data.products![i].nama}","url":"${data.products![i].gambar}"}]');
                                              }
                                            });
                                          },
                                          child: selectItem != i
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.all(3),
                                                  child: ClipRect(
                                                    child: OctoImage(
                                                      image: NetworkImage(
                                                        '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                                      ),
                                                      fit: BoxFit.fill,
                                                      placeholderBuilder:
                                                          (context) =>
                                                              SkeletonAnimation(
                                                                  child:
                                                                      Container(
                                                        height: 100,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            color: Colors
                                                                .grey.shade300),
                                                      )),
                                                      // loadingBuilder: (context,
                                                      //     child,
                                                      //     loadingProgress) {
                                                      //   if (loadingProgress ==
                                                      //       null) {
                                                      //     return child;
                                                      //   }
                                                      //   return SkeletonAnimation(
                                                      //       child: Container(
                                                      //     height: 100,
                                                      //     width: 100,
                                                      //     decoration: BoxDecoration(
                                                      //         borderRadius:
                                                      //             BorderRadius
                                                      //                 .circular(
                                                      //                     5),
                                                      //         color: Colors
                                                      //             .grey
                                                      //             .shade300),
                                                      //   ));
                                                      // }
                                                    ),
                                                  ),
                                                )
                                              : Container(
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                            '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                                          ),
                                                          fit: BoxFit.fill)),
                                                  child: ClipRect(
                                                      child: BackdropFilter(
                                                    filter: ImageFilter.blur(
                                                        sigmaX: 1, sigmaY: 1),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.5)),
                                                      child: const Icon(
                                                        FontAwesomeIcons
                                                            .solidCircleCheck,
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                  ))));
                                    }),
                              ],
                            ),
                          );
                        },
                      ))))),
    );
  }

  Future<bool> willPop() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            content: const Text(
              'Apakah anda yakin ingin keluar dari aplikasi ini?',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Batal'),
              ),
              TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
    return false;
  }
}
