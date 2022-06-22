import 'package:e_learning_uji/core/enum/view_state.dart';
import 'package:e_learning_uji/core/models/base_view_model.dart';
import 'package:e_learning_uji/core/models/products_model.dart';
import 'package:e_learning_uji/core/repository/products_repository.dart';
import 'package:flutter/cupertino.dart';

class ProductsViewModel extends BaseViewModel {
  ProductsRepo productsRepo = ProductsRepo();
  List<ProductModel>? products;

  Future getProduct(BuildContext context) async {
    setState(ViewState.busy);
    products = await productsRepo.getProduct(context);
    setState(ViewState.idle);
  }
}
