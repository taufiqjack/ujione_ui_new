import 'package:dotted_border/dotted_border.dart';
import 'package:e_learning_uji/core/models/products_model.dart';
import 'package:e_learning_uji/core/viewmodels/products_viewmodel.dart';
import 'package:e_learning_uji/ui/view/base_view.dart';
import 'package:e_learning_uji/ui/widget/draggable_product.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    ProductModel? products;
    List<ProductWithText>? productsWithText = [];

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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  imgList(context, data: data.products!)
                                  // SizedBox(
                                  //   height: MediaQuery.of(context).size.height /
                                  //       0.35,
                                  //   width: 200,
                                  //   child: Expanded(
                                  //     child: ListView.builder(
                                  //         physics:
                                  //             const NeverScrollableScrollPhysics(),
                                  //         itemCount: data.products!.length,
                                  //         itemBuilder: (context, i) {
                                  //           return Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10,
                                  //                 bottom: 10,
                                  //                 left: 20,
                                  //                 right: 20),
                                  //             child: Draggable<ProductModel>(
                                  //                 data: products,
                                  //                 child: Image.network(
                                  //                   '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                  //                   loadingBuilder: (context,
                                  //                       child,
                                  //                       loadingProgress) {
                                  //                     if (loadingProgress ==
                                  //                         null) {
                                  //                       return child;
                                  //                     }
                                  //                     return Center(
                                  //                         child:
                                  //                             SkeletonAnimation(
                                  //                                 child:
                                  //                                     Container(
                                  //                       height: 100,
                                  //                       width: 100,
                                  //                       decoration: BoxDecoration(
                                  //                           borderRadius:
                                  //                               BorderRadius
                                  //                                   .circular(
                                  //                                       5),
                                  //                           color: Colors
                                  //                               .grey.shade300),
                                  //                     )));
                                  //                   },
                                  //                   height: 100,
                                  //                   width: 100,

                                  //                   // imageUrl:
                                  //                 ),
                                  //                 feedback: Image.network(
                                  //                   '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                                  //                   loadingBuilder: (context,
                                  //                       child,
                                  //                       loadingProgress) {
                                  //                     if (loadingProgress ==
                                  //                         null) {
                                  //                       return child;
                                  //                     }
                                  //                     return Center(
                                  //                         child:
                                  //                             SkeletonAnimation(
                                  //                                 child:
                                  //                                     Container(
                                  //                       height: 100,
                                  //                       width: 100,
                                  //                       decoration: BoxDecoration(
                                  //                           borderRadius:
                                  //                               BorderRadius
                                  //                                   .circular(
                                  //                                       5),
                                  //                           color: Colors
                                  //                               .grey.shade300),
                                  //                     )));
                                  //                   },
                                  //                   height: 100,
                                  //                   width: 100,
                                  //                 ),
                                  //                 childWhenDragging:
                                  //                     const SizedBox(
                                  //                   height: 100,
                                  //                 )),
                                  //           );
                                  //         }),
                                  //   ),
                                  // ),
                                  ,
                                  Column(
                                    children: List.generate(
                                        data.products!.length, (index) {
                                      return _oldTarget(context,
                                          text: data.products![index].nama,
                                          // data:
                                          //     productsWithText[index].products,
                                          productName: [],
                                          onAccept: (dt) => setState(() {
                                                if (data.products![index]
                                                        .nama ==
                                                    null) {
                                                  for (var element
                                                      in productsWithText) {
                                                    if (element.products !=
                                                            null &&
                                                        element.products!
                                                                .nama ==
                                                            dt.nama) {
                                                      element.products = null;
                                                    }
                                                  }
                                                  productsWithText[index]
                                                      .products = dt;
                                                  data.products!.removeWhere(
                                                      (prod) =>
                                                          prod.nama == dt.nama);
                                                } else {
                                                  // First check if the index is not same (same position as index)
                                                  if (productsWithText[index]
                                                          .products !=
                                                      dt) {
                                                    // Remove from image list that contains the moved item
                                                    for (var element in data
                                                        .products!
                                                        .toList()) {
                                                      if (element == dt) {
                                                        data.products!
                                                            .remove(element);
                                                      }
                                                    }

                                                    // Change the new value from moved item (case moving from target box to target box)
                                                    for (int i = 0;
                                                        i <
                                                            productsWithText
                                                                .length;
                                                        i++) {
                                                      if (productsWithText[i]
                                                                  .products !=
                                                              null &&
                                                          productsWithText[i]
                                                                  .products!
                                                                  .nama ==
                                                              dt.nama) {
                                                        productsWithText[i]
                                                                .products =
                                                            productsWithText[
                                                                    index]
                                                                .products;
                                                        break;
                                                      }
                                                    }

                                                    // Checking if the moved item not same as the target item then remove the duplicate item (case moving from target box to target box)
                                                    if (productsWithText[index]
                                                                .products !=
                                                            null &&
                                                        productsWithText[index]
                                                                .name !=
                                                            dt.nama) {
                                                      // Add old target to image list
                                                      data.products!.add(
                                                          productsWithText[
                                                                  index]
                                                              .products!);

                                                      // Change the target value to moved value
                                                      productsWithText[index]
                                                          .products = dt;

                                                      // Remove the duplicate item from list
                                                      for (var element in data
                                                          .products!
                                                          .toList()) {
                                                        for (var text
                                                            in productsWithText) {
                                                          if (text.products ==
                                                              element) {
                                                            data.products!
                                                                .remove(
                                                                    element);
                                                          }
                                                        }
                                                      }
                                                    } else {
                                                      productsWithText[index]
                                                          .products = dt;
                                                    }
                                                  }
                                                }
                                              }));
                                    }),
                                  )
                                  // SingleChildScrollView(
                                  //   child: SizedBox(
                                  //     width: 150,
                                  //     child: Expanded(
                                  //       child: DragTarget<ProductModel>(
                                  //         builder: (context, cd, rj) {
                                  //           return ListView.builder(
                                  //               physics:
                                  //                   const NeverScrollableScrollPhysics(),
                                  //               shrinkWrap: true,
                                  //               itemCount:
                                  //                   data.products!.length,
                                  //               itemBuilder: (context, i) {
                                  //                 return Padding(
                                  //                     padding:
                                  //                         const EdgeInsets.only(
                                  //                             top: 30,
                                  //                             bottom: 30,
                                  //                             left: 20,
                                  //                             right: 20),
                                  //                     child: ListTile(
                                  //                       title: Text(
                                  //                         '${data.products![i].nama}',
                                  //                         style:
                                  //                             const TextStyle(
                                  //                                 color: Colors
                                  //                                     .grey,
                                  //                                 fontSize: 14),
                                  //                       ),
                                  //                     ));
                                  //               });
                                  //         },
                                  //         onWillAccept: (data) => true,
                                  //         onAccept: (ProductModel data) {
                                  //           setState(() {
                                  //             products = data;
                                  //           });
                                  //         },
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),

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

  Widget _oldTarget(
    BuildContext context, {
    String? text,
    ProductModel? data,
    required List<String> productName,
    required DragTargetAccept<ProductModel> onAccept,
  }) =>
      Container(
        padding: const EdgeInsets.only(top: 20),
        child: DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 2,
          radius: const Radius.circular(5),
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade400),
            child: DragTarget<ProductModel>(
              builder: (context, cd, rj) => Stack(
                children: [
                  Center(
                    child: oldTText(text!),
                  ),
                  (data != null)
                      ? DraggableProduct(
                          product: data,
                        )
                      : const SizedBox()
                ],
              ),
              onWillAccept: (data) => true,
              onAccept: (data) {
                onAccept(data);
              },
            ),
          ),
        ),
      );
  Widget oldTText(String text) => Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      );

  Widget imgList(
    BuildContext context, {
    required List<ProductModel> data,
    // required DragTargetAccept<Birds> onAccept,
  }) =>
      DragTarget<ProductModel>(
        builder: (context, cd, rj) => Column(
          children: [
            ...data
                .map((product) => Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                        height: 70,
                        width: 100,
                        child: DraggableProduct(product: product))))
                .toList()
              ..shuffle()
          ],
        ),
        onWillAccept: (data) => true,
        onAccept: (data) {},
      );
}
