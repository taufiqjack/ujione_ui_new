import 'package:e_learning_uji/core/models/products_model.dart';
import 'package:e_learning_uji/core/viewmodels/products_viewmodel.dart';
import 'package:e_learning_uji/ui/view/base_view.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

import '../../core/constans/api.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    ProductModel? products;

    return BaseView<ProductsViewModel>(
        onModelReady: (data) {
          data.getProduct(context);
        },
        builder: (context, data, child) => Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color.fromARGB(255, 237, 237, 237),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: const Text(
                  'List Produk',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              body: data.products == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: SingleChildScrollView(
                          child: Column(children: [
                            const Text(
                              'Cocokan Gambar',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        0.35,
                                    width: 200,
                                    child: Expanded(
                                      child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: data.products!.length,
                                          itemBuilder: (context, i) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10,
                                                  bottom: 10,
                                                  left: 20,
                                                  right: 20),
                                              child: Draggable<ProductModel>(
                                                  data: products,
                                                  child: Image.network(
                                                    '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                                    loadingBuilder: (context,
                                                        child,
                                                        loadingProgress) {
                                                      if (loadingProgress ==
                                                          null) {
                                                        return child;
                                                      }
                                                      return Center(
                                                          child:
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
                                                      )));
                                                    },
                                                    height: 100,
                                                    width: 100,

                                                    // imageUrl:
                                                  ),
                                                  feedback: Image.network(
                                                    '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                                    loadingBuilder: (context,
                                                        child,
                                                        loadingProgress) {
                                                      if (loadingProgress ==
                                                          null) {
                                                        return child;
                                                      }
                                                      return Center(
                                                          child:
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
                                                      )));
                                                    },
                                                    height: 100,
                                                    width: 100,
                                                  ),
                                                  childWhenDragging:
                                                      const SizedBox(
                                                    height: 100,
                                                  )),
                                            );
                                          }),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: SizedBox(
                                      width: 150,
                                      child: Expanded(
                                        child: DragTarget<ProductModel>(
                                          builder: (context, cd, rj) {
                                            return ListView.builder(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount:
                                                    data.products!.length,
                                                itemBuilder: (context, i) {
                                                  return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 30,
                                                              bottom: 30,
                                                              left: 20,
                                                              right: 20),
                                                      child: ListTile(
                                                        title: Text(
                                                          '${data.products![i].nama}',
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 14),
                                                        ),
                                                      ));
                                                });
                                          },
                                          onWillAccept: (data) => true,
                                          onAccept: (ProductModel data) {
                                            setState(() {
                                              products = data;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Text('data'),
                                ],
                              ),
                            ),
                          ]
                              //     ListView.builder(
                              //         physics: NeverScrollableScrollPhysics(),
                              //         itemCount: data.products!.length,
                              //         itemBuilder: (context, i) {
                              //           return Padding(
                              //             padding: const EdgeInsets.only(
                              //                 top: 10, bottom: 10, left: 20, right: 20),
                              //             child: ListTile(
                              //               title: Text('${data.products![i].nama}'),
                              //             ),
                              //           );
                              //         }),
                              //     SizedBox(
                              //       width: 20,
                              //     ),
                              //     ListView.builder(
                              //         physics: NeverScrollableScrollPhysics(),
                              //         itemCount: data.products!.length,
                              //         itemBuilder: (context, i) {
                              //           return Padding(
                              //             padding: const EdgeInsets.only(
                              //                 top: 10, bottom: 10, left: 20, right: 20),
                              //             child: CachedNetworkImage(
                              //               imageUrl:
                              //                   '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                              //               height: 100,
                              //               width: 100,
                              //             ),
                              //           );
                              //         }),
                              //   ],
                              // ),
                              // ListView.builder(
                              //     itemCount: data.products!.length,
                              //     itemBuilder: (context, i) {
                              //       return Padding(
                              //         padding: const EdgeInsets.only(
                              //             top: 10, bottom: 10, left: 20, right: 20),
                              //         child: ListTile(
                              //           title: Text('${data.products![i].nama}'),
                              //         ),
                              //         // child: CachedNetworkImage(
                              //         //   imageUrl:
                              //         //       '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                              //         // ),
                              //       );
                              //     }),
                              ),
                        ),
                      ),
                    ),
            ));
  }
}
