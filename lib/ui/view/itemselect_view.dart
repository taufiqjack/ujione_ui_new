import 'dart:ui';

import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/material.dart';
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
  int? selectedItem;
  @override
  Widget build(BuildContext context) {
    return BaseView<ProductsViewModel>(
      onModelReady: (data) {
        data.getProduct(context);
      },
      builder: (context, data, child) => Scaffold(
          body: data.products == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: SingleChildScrollView(
                          child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: data.products!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                Text(
                                  '${data.products![index].nama}',
                                ),
                                GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3),
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: data.products!.length,
                                    itemBuilder: (context, i) {
                                      return Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selectedItem = i;
                                                });
                                              },
                                              child: selectedItem != i
                                                  ? ClipRect(
                                                      child: Image.network(
                                                          '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                                          loadingBuilder: (context,
                                                              child,
                                                              loadingProgress) {
                                                        if (loadingProgress ==
                                                            null) return child;
                                                        return SkeletonAnimation(
                                                            child: Container(
                                                          height: 100,
                                                          width: 100,
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              color: Colors.grey
                                                                  .shade300),
                                                        ));
                                                      }),
                                                    )
                                                  : Container(
                                                      decoration: BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                        image: NetworkImage(
                                                            '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}'),
                                                      )),
                                                      child: ClipRect(
                                                        child: BackdropFilter(
                                                          filter:
                                                              ImageFilter.blur(
                                                                  sigmaX: 1,
                                                                  sigmaY: 1),
                                                          child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .black
                                                                      .withOpacity(
                                                                          0.5))),
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
}
