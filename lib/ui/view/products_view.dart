import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learning_uji/core/constans/api.dart';
import 'package:e_learning_uji/core/viewmodels/products_viewmodel.dart';
import 'package:e_learning_uji/ui/view/base_view.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ProductsViewModel>(
        onModelReady: (data) {
          data.getProduct(context);
        },
        builder: (context, data, child) => Scaffold(
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
                  : Center(
                      child: ListView.builder(
                          itemCount: data.products!.length,
                          itemBuilder: (context, i) {
                            return CachedNetworkImage(
                              imageUrl:
                                  '${BaseUrl().rg + BaseUrl().imagerg}/${data.products![i].gambar}',
                            );
                          })),
            ));
  }
}
